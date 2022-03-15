<?php

namespace ILJ\Core\IndexStrategy;

use  ILJ\Backend\Editor ;
use  ILJ\Core\Options ;
use  ILJ\Database\Linkindex ;
use  ILJ\Database\Postmeta ;
use  ILJ\Database\WPML\Translations ;
use  ILJ\Enumeration\LinkType ;
use  ILJ\Helper\Encoding ;
use  ILJ\Helper\IndexAsset ;
use  ILJ\Helper\Regex ;
use  ILJ\Helper\Replacement ;
use  ILJ\Helper\Url ;
use  ILJ\Helper\Blacklist ;
use  ILJ\Helper\Statistic ;
use  ILJ\Type\Ruleset ;
/**
 * WPML compatible indexbuilder
 *
 * Takes care of interlinking only pages from the same language domain
 *
 * @package ILJ\Core\Indexbuilder
 *
 * @since 1.2.0
 */
class WPMLStrategy extends DefaultStrategy
{
    /**
     * @var   array
     * @since 1.2.0
     */
    protected  $link_rules = array() ;
    /**
     * @var   array
     * @since 1.2.0
     */
    protected  $languages = array() ;
    /**
     * 
     * @var array
     * @since 1.2.15
     */
    protected  $blacklisted_posts = array() ;
    /**
     * 
     * @var array
     * @since 1.2.15
     */
    protected  $blacklisted_terms = array() ;
    public function __construct()
    {
        $this->languages = self::getLanguages();
        $this->blacklisted_posts = Blacklist::getBlacklistedList( "post" );
    }
    
    /**
     * Get all active WPML languages
     *
     * @static
     * @since  1.2.0
     *
     * @return array
     */
    public static function getLanguages()
    {
        $languages = [];
        $languagesData = ( function_exists( 'icl_get_languages' ) ? icl_get_languages( 'skip_missing=0&orderby=code' ) : [] );
        if ( !count( $languagesData ) ) {
            return $languages;
        }
        foreach ( $languagesData as $language ) {
            $languages[] = $language['code'];
        }
        return array_unique( $languages );
    }
    
    /**
     * @inheritdoc
     */
    public function setIndices()
    {
        $index_count = 0;
        $this->loadLinkConfigurations();
        $posts = IndexAsset::getPosts();
        if ( is_array( $posts ) && !empty($posts) ) {
            $this->writeToIndex(
                $posts,
                'post',
                [
                'id'      => 'ID',
                'content' => 'post_content',
            ],
                $index_count
            );
        }
        return $index_count;
    }
    
    /**
     * setIndividualIndices
     *
     * @param  int $id
     * @param  string $type
     * @param  string $link_type
     * @return int
     */
    public function setIndividualIndices( $id, $type, $link_type )
    {
        $index_count = Statistic::getLinkIndexCount();
        $posts = array();
        
        if ( $link_type == LinkType::OUTGOING ) {
            $this->loadLinkConfigurations();
            if ( $type == "post" ) {
                array_push( $posts, get_post( $id ) );
            }
        } else {
            
            if ( $link_type == LinkType::INCOMING ) {
                $this->loadLinkIndividualConfigurations( $id, $type );
                $posts = IndexAsset::getPosts();
            }
        
        }
        
        $this->writeToIndex(
            $posts,
            'post',
            [
            'id'      => 'ID',
            'content' => 'post_content',
        ],
            $index_count
        );
        return $index_count;
    }
    
    /**
     * Picks up all meta definitions for configured keywords by language and adds them to internal ruleset
     *
     * @since 1.2.0
     *
     * @return void
     */
    protected function loadLinkConfigurations()
    {
        $post_definitions = Postmeta::getAllLinkDefinitions();
        foreach ( $this->languages as $language ) {
            $this->link_rules[$language] = new Ruleset();
            foreach ( $post_definitions as $definition ) {
                if ( $this->getDataLanguage( $definition->post_id, 'post' ) != $language ) {
                    continue;
                }
                $type = 'post';
                $anchors = unserialize( $definition->meta_value );
                if ( !$anchors || !is_array( $anchors ) ) {
                    continue;
                }
                $anchors = $this->applyKeywordOrder( $anchors );
                $this->addAnchorsToLinkRules( $anchors, [
                    'id'       => $definition->post_id,
                    'type'     => $type,
                    'language' => $language,
                ] );
            }
        }
        return;
    }
    
    /**
     * loadLinkIndividualConfigurations
     *
     * @param  mixed $id
     * @param  mixed $type
     * @return void
     */
    protected function loadLinkIndividualConfigurations( $id, $type )
    {
        
        if ( $type == "post" ) {
            $post_definitions = Postmeta::getLinkDefinitionsById( $id );
            foreach ( $this->languages as $language ) {
                $this->link_rules[$language] = new Ruleset();
                foreach ( $post_definitions as $definition ) {
                    if ( $this->getDataLanguage( $definition->post_id, 'post' ) != $language ) {
                        continue;
                    }
                    $type = 'post';
                    $anchors = unserialize( $definition->meta_value );
                    if ( !$anchors || !is_array( $anchors ) ) {
                        continue;
                    }
                    $anchors = $this->applyKeywordOrder( $anchors );
                    $this->addAnchorsToLinkRules( $anchors, [
                        'id'       => $definition->post_id,
                        'type'     => $type,
                        'language' => $language,
                    ] );
                }
            }
        } else {
            if ( $type == "term" ) {
            }
        }
        
        return;
    }
    
    /**
     * Get all relational translation meta data for posts
     *
     * @since 1.2.0
     *
     * @return array
     */
    protected function getTranslationsPosts()
    {
        if ( !isset( $this->translation_posts ) ) {
            $this->translation_posts = Translations::getByElementType( 'post' );
        }
        return $this->translation_posts;
    }
    
    /**
     * Writes a set of data to the linkindex
     *
     * @since 1.0.1
     *
     * @param  array  $data      The data container
     * @param  string $data_type Type of the data inside the container
     * @param  array  $fields    Field settings for the container objects
     * @param  int    &$counter  Counts the written operations
     * @return void
     */
    protected function writeToIndex(
        $data,
        $data_type,
        array $fields,
        &$counter
    )
    {
        if ( !is_array( $data ) || !count( $data ) ) {
            return;
        }
        $fields = wp_parse_args( $fields, [
            'id'      => '',
            'content' => '',
        ] );
        $IndexStrategy = new IndexStrategy( $data_type, $fields, $this->link_options );
        $IndexStrategy->setCounter( $counter );
        foreach ( $this->languages as $language ) {
            $IndexStrategy->setLinkRules( $this->link_rules[$language] );
            $data_filtered = $this->filterDataByLanguage( $data, $language, $data_type );
            $IndexStrategy->buildLinksPerData( $data_filtered );
        }
        $counter = $IndexStrategy->getCounter();
    }
    
    /**
     * @inheritDoc
     */
    protected function addAnchorsToLinkRules( array $anchors, array $params )
    {
        foreach ( $anchors as $anchor ) {
            $anchor = Encoding::unmaskSlashes( $anchor );
            if ( !Regex::isValid( $anchor ) ) {
                continue;
            }
            $pattern = Regex::escapeDot( $anchor );
            $this->link_rules[$params['language']]->addRule( $pattern, $params['id'], $params['type'] );
        }
        return;
    }
    
    /**
     * Get the language of any asset data (post, tax)
     *
     * @since 1.2.0
     * @param int    $data_id   The id of the asset
     * @param string $data_type The type of the asset (post, tax)
     *
     * @return string
     */
    protected function getDataLanguage( $data_id, $data_type )
    {
        $translations_data = ( isset( $translations_data ) ? $translations_data : $this->getTranslationsPosts() );
        foreach ( $translations_data as $translation_data_single ) {
            if ( (int) $translation_data_single->element_id != $data_id ) {
                continue;
            }
            return $translation_data_single->language_code;
        }
        return '';
    }
    
    /**
     * Filters a collection of data (posts, taxes) by a given language
     *
     * @since 1.2.0
     * @param array  $data      The data collection
     * @param string $language  The language code
     * @param string $data_type The type of the collection items
     *
     * @return array
     */
    protected function filterDataByLanguage( $data, $language, $data_type )
    {
        $data_filtered = [];
        foreach ( $data as $current ) {
            $data_id = ( isset( $data_id ) ? $data_id : $current->ID );
            $data_language = $this->getDataLanguage( $data_id, $data_type );
            if ( $data_language == $language ) {
                $data_filtered[] = $current;
            }
            unset( $data_id );
        }
        return $data_filtered;
    }

}