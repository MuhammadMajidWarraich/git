<?php

namespace ILJ\Core;

use  ILJ\Backend\AdminMenu ;
use  ILJ\Backend\Editor ;
use  ILJ\Backend\MenuPage\Tools ;
use  ILJ\Backend\RatingNotifier ;
use  ILJ\Backend\User ;
use  ILJ\Helper\Replacement ;
use  ILJ\Backend\Environment ;
use  ILJ\Helper\Capabilities ;
use  ILJ\Enumeration\TagExclusion ;
use  ILJ\Backend\Menupage\Settings ;
use  ILJ\Core\Options\TaxonomyWhitelist ;
use  ILJ\Core\Options\Whitelist ;
use  ILJ\Database\Linkindex ;
use  ILJ\Enumeration\LinkType ;
use  ILJ\Helper\Blacklist ;
use  ILJ\Helper\Options as OptionHelper ;
use  ILJ\Helper\Statistic ;
/**
 * The main app
 *
 * Coordinates all steps for the plugin usage
 *
 * @package ILJ\Core
 *
 * @since 1.0.1
 */
class App
{
    private static  $instance = null ;
    /**
     * Initializes the construction of the app
     *
     * @static
     * @since  1.0.1
     *
     * @return void
     */
    public static function init()
    {
        if ( null !== self::$instance ) {
            return;
        }
        self::$instance = new self();
        $last_version = Environment::get( 'last_version' );
        
        if ( $last_version != ILJ_VERSION ) {
            ilj_install_db();
            Options::setOptionsDefault();
        }
    
    }
    
    protected function __construct()
    {
        $this->initSettings();
        $this->loadIncludes();
        add_action( 'admin_init', [ '\\ILJ\\Core\\Options', 'init' ] );
        add_action( 'admin_init', [ '\\ILJ\\Backend\\Editor', 'addAssets' ] );
        add_action( 'future_to_publish', [ $this, 'publishFuturePost' ], 99 );
        add_action( 'plugins_loaded', [ $this, 'afterPluginsLoad' ] );
        add_action( IndexBuilder::ILJ_ACTION_TRIGGER_BUILD_INDEX, [ $this, 'triggerRebuildIndex' ] );
    }
    
    /**
     * Initialising all menu and settings related stuff
     *
     * @since 1.0.1
     *
     * @return void
     */
    protected function initSettings()
    {
        add_action( 'admin_menu', [ '\\ILJ\\Backend\\AdminMenu', 'init' ] );
        add_filter( 'plugin_action_links_' . ILJ_NAME, [ $this, 'addSettingsLink' ] );
    }
    
    /**
     * Loads all include files
     *
     * @since 1.0.1
     *
     * @return void
     */
    public function loadIncludes()
    {
        $include_files = [ 'install', 'uninstall' ];
        foreach ( $include_files as $file ) {
            include_once ILJ_PATH . 'includes/' . $file . '.php';
        }
    }
    
    /**
     * Handles post transitions for scheduled posts
     *
     * @since 1.1.5
     * @param object $post
     *
     * @return void
     */
    public function publishFuturePost( $post )
    {
        if ( !$this->postAffectsIndex( $post->ID ) ) {
            return;
        }
        $whitelisted_post_types = \ILJ\Core\Options::getOption( Whitelist::getKey() );
        if ( !in_array( get_post_type( $post->ID ), $whitelisted_post_types ) ) {
            return;
        }
        OptionHelper::triggerIndividualRebuildIndex( $post->ID, "post", LinkType::INCOMING );
        if ( Blacklist::checkIfBlacklisted( "post", $post->ID ) ) {
            return;
        }
        OptionHelper::triggerIndividualRebuildIndex( $post->ID, "post", LinkType::OUTGOING );
    }
    
    /**
     * Gets called after all plugins are loaded for registering actions and filter
     *
     * @since 1.0.1
     *
     * @return void
     */
    public function afterPluginsLoad()
    {
        Compat::init();
        RatingNotifier::init();
        $this->registerActions();
        $this->registerFilter();
        load_plugin_textdomain( 'internal-links', false, false );
    }
    
    /**
     * Registers all actions for the plugin
     *
     * @since 1.1.5
     *
     * @return void
     */
    protected function registerActions()
    {
        $capability = current_user_can( 'administrator' );
        add_action( 'admin_post_' . Options::KEY, array( '\\ILJ\\Helper\\Post', 'resetOptionsAction' ) );
        if ( !$capability ) {
            return;
        }
        add_action( 'load-post.php', [ '\\ILJ\\Backend\\Editor', 'addKeywordMetaBox' ] );
        add_action( 'load-post-new.php', [ '\\ILJ\\Backend\\Editor', 'addKeywordMetaBox' ] );
        add_action(
            'save_post',
            [ '\\ILJ\\Backend\\Editor', 'saveKeywordMeta' ],
            10,
            2
        );
        add_action( 'wp_ajax_ilj_search_posts', [ '\\ILJ\\Helper\\Ajax', 'searchPostsAction' ] );
        add_action( 'wp_ajax_ilj_hide_promo', [ '\\ILJ\\Helper\\Ajax', 'hidePromo' ] );
        add_action( 'wp_loaded', [ '\\ILJ\\Backend\\Column', 'addConfiguredLinksColumn' ] );
        add_action( 'wp_ajax_ilj_rating_notification_add', [ '\\ILJ\\Helper\\Ajax', 'ratingNotificationAdd' ] );
        add_action( 'wp_ajax_ilj_upload_import', [ '\\ILJ\\Helper\\Ajax', 'uploadImport' ] );
        add_action( 'wp_ajax_ilj_start_import', [ '\\ILJ\\Helper\\Ajax', 'startImport' ] );
        add_action( 'wp_ajax_ilj_export_settings', [ '\\ILJ\\Helper\\Ajax', 'exportSettings' ] );
        add_action( 'wp_ajax_ilj_render_link_detail_statistic', [ '\\ILJ\\Helper\\Ajax', 'renderLinkDetailStatisticAction' ] );
        add_action( 'wp_ajax_ilj_render_links_statistic', [ '\\ILJ\\Helper\\Ajax', 'renderLinksStatisticAction' ] );
        add_action( 'wp_ajax_ilj_render_anchor_detail_statistic', [ '\\ILJ\\Helper\\Ajax', 'renderAnchorDetailStatisticAction' ] );
        add_action( 'wp_ajax_ilj_render_anchors_statistic', [ '\\ILJ\\Helper\\Ajax', 'renderAnchorsStatistic' ] );
        add_action(
            'update_option',
            [ 'ILJ\\Helper\\Options', 'updateOptionIndexRebuild' ],
            10,
            3
        );
        $this->addPostIndexTrigger();
    }
    
    /**
     * Triggers all actions for automatic index building mode.
     *
     * @since  1.1.0
     * @return void
     */
    protected function addPostIndexTrigger()
    {
        add_action(
            Editor::ILJ_ACTION_AFTER_KEYWORDS_UPDATE,
            function ( $id, $type, $status ) {
            if ( $status == 'publish' ) {
                OptionHelper::triggerIndividualRebuildIndex( $id, $type, LinkType::INCOMING );
            }
        },
            10,
            3
        );
        add_action(
            'post_updated',
            function ( $post_id, $post_after, $post_before ) {
            
            if ( $post_after->post_content != $post_before->post_content ) {
                $whitelisted_post_types = \ILJ\Core\Options::getOption( Whitelist::getKey() );
                if ( !in_array( get_post_type( $post_id ), $whitelisted_post_types ) ) {
                    return;
                }
                if ( Blacklist::checkIfBlacklisted( "post", $post_id ) ) {
                    return;
                }
                OptionHelper::triggerIndividualRebuildIndex( $post_id, "post", LinkType::OUTGOING );
            }
        
        },
            10,
            3
        );
        //rebuild index after keyword meta got updated on gutenberg editor:
        add_action(
            'updated_post_meta',
            function (
            $meta_id,
            $post_id,
            $meta_key,
            $meta_value
        ) {
            if ( !is_admin() || !function_exists( 'get_current_screen' ) ) {
                return;
            }
            $current_screen = get_current_screen();
            $incoming_metas = array( Editor::ILJ_META_KEY_LIMITINCOMINGLINKS, Editor::ILJ_META_KEY_MAXINCOMINGLINKS );
            $outgoing_metas = array( Editor::ILJ_META_KEY_BLACKLISTDEFINITION, Editor::ILJ_META_KEY_LIMITLINKSPERPARAGRAPH, Editor::ILJ_META_KEY_LINKSPERPARAGRAPH );
            $whitelisted_post_types = \ILJ\Core\Options::getOption( Whitelist::getKey() );
            if ( !in_array( $meta_key, $outgoing_metas ) && !in_array( $meta_key, $incoming_metas ) ) {
                return;
            }
            if ( !$this->postAffectsIndex( $post_id ) ) {
                return;
            }
            if ( !in_array( get_post_type( $post_id ), $whitelisted_post_types ) ) {
                return;
            }
            if ( !in_array( $meta_key, $incoming_metas ) ) {
                
                if ( in_array( $meta_key, $outgoing_metas ) ) {
                    if ( Blacklist::checkIfBlacklisted( "post", $post_id ) ) {
                        return;
                    }
                    OptionHelper::triggerIndividualRebuildIndex( $post_id, "post", LinkType::OUTGOING );
                    return;
                } else {
                    return;
                }
            
            }
            if ( in_array( $meta_key, $incoming_metas ) ) {
                OptionHelper::triggerIndividualRebuildIndex( $post_id, "post", LinkType::INCOMING );
            }
        },
            10,
            4
        );
        add_action(
            Editor::ILJ_ACTION_AFTER_ADD_TO_BLACKLIST,
            function ( $id, $type ) {
            Linkindex::delete_link_by_id( $id, $type );
            OptionHelper::triggerIndividualRebuildIndex( $id, $type, LinkType::INCOMING );
        },
            10,
            2
        );
        add_action( Linkindex::ILJ_ACTION_AFTER_DELETE_LINKINDEX, function () {
            $start = microtime( true );
            $index_count = Statistic::getLinkIndexCount();
            $duration = round( microtime( true ) - $start, 2 );
            $offset = get_option( 'gmt_offset' );
            $hours = (int) $offset;
            $minutes = ($offset - floor( $offset )) * 60;
            $feedback = [
                "last_update" => [
                "date"     => new \DateTime( 'now', new \DateTimeZone( sprintf( '%+03d:%02d', $hours, $minutes ) ) ),
                "entries"  => $index_count,
                "duration" => $duration,
            ],
            ];
            Environment::update( 'linkindex', $feedback );
        }, 10 );
        add_action(
            Editor::ILJ_ACTION_AFTER_REMOVE_FROM_BLACKLIST,
            function ( $id, $type ) {
            OptionHelper::triggerIndividualRebuildIndex( $id, $type, LinkType::OUTGOING );
            OptionHelper::triggerIndividualRebuildIndex( $id, $type, LinkType::INCOMING );
        },
            10,
            2
        );
        add_action(
            'transition_post_status',
            function ( $new_status, $old_status, $post ) {
            if ( $old_status == 'publish' && $new_status == 'publish' ) {
                return;
            }
            if ( $old_status != 'publish' && $new_status != 'publish' ) {
                return;
            }
            if ( $old_status == 'draft' && $new_status == 'draft' ) {
                return;
            }
            $whitelisted_post_types = \ILJ\Core\Options::getOption( Whitelist::getKey() );
            if ( !in_array( get_post_type( $post->ID ), $whitelisted_post_types ) ) {
                return;
            }
            
            if ( $new_status == 'trash' ) {
                Linkindex::delete_link_by_id( $post->ID, 'post' );
                return;
            }
            
            
            if ( $old_status == 'publish' && $new_status == 'draft' ) {
                Linkindex::delete_link_by_id( $post->ID, 'post' );
                return;
            }
            
            OptionHelper::triggerIndividualRebuildIndex( $post->ID, 'post', LinkType::INCOMING );
            if ( Blacklist::checkIfBlacklisted( "post", $post->ID ) ) {
                return;
            }
            OptionHelper::triggerIndividualRebuildIndex( $post->ID, 'post', LinkType::OUTGOING );
        },
            10,
            3
        );
    }
    
    /**
     * Triggers the recreation of the linkindex
     *
     * @since  1.1.0
     * @return void
     */
    public function triggerRebuildIndex()
    {
        User::update( 'index', [
            'last_trigger' => new \DateTime(),
        ] );
        add_action( 'shutdown', function () {
            $index_builder = new IndexBuilder();
            $index_builder->buildIndex();
        } );
    }
    
    /**
     * Registers plugin relevant filters
     *
     * @since 1.0.0
     *
     * @return void
     */
    public function registerFilter()
    {
        add_filter( 'the_content', array( $this, 'linkContent' ), 99 );
        add_filter(
            'ilj_get_the_content',
            array( $this, 'linkContent' ),
            99,
            1
        );
        $tag_exclusions = Options::getOption( \ILJ\Core\Options\NoLinkTags::getKey() );
        if ( is_array( $tag_exclusions ) && count( $tag_exclusions ) ) {
            add_filter( Replacement::ILJ_FILTER_EXCLUDE_TEXT_PARTS, function ( $search_parts ) use( $tag_exclusions ) {
                foreach ( $tag_exclusions as $tag_exclusion ) {
                    $regex = TagExclusion::getRegex( $tag_exclusion );
                    if ( $regex ) {
                        $search_parts[] = $regex;
                    }
                }
                return $search_parts;
            } );
        }
        \ILJ\ilj_fs()->add_filter( 'reshow_trial_after_every_n_sec', function ( $thirty_days_in_sec ) {
            // 40 days in sec.
            return 60 * 24 * 60 * 60;
        } );
        \ILJ\ilj_fs()->add_filter( 'show_first_trial_after_n_sec', function ( $day_in_sec ) {
            // 3 days in sec.
            return 3 * 24 * 60 * 60;
        } );
        \ILJ\ilj_fs()->add_filter( 'show_affiliate_program_notice', function () {
            return false;
        } );
    }
    
    /**
     * Adds a link to the plugins settings page on plugins overview
     *
     * @since 1.0.0
     *
     * @param  array $links All links that get displayed
     * @return array
     */
    public function addSettingsLink( $links )
    {
        $settings_link = '<a href="admin.php?page=' . AdminMenu::ILJ_MENUPAGE_SLUG . '-' . Settings::ILJ_MENUPAGE_SETTINGS_SLUG . '">' . __( 'Settings' ) . '</a>';
        array_unshift( $links, $settings_link );
        return $links;
    }
    
    /**
     * Checks if a (changed) post affects the index creation
     *
     * @since  1.2.0
     * @param  int $post_id The ID of the post
     * @return bool
     */
    protected function postAffectsIndex( $post_id )
    {
        $post = get_post( $post_id );
        if ( !$post || !in_array( $post->post_status, [ 'publish', 'trash' ] ) ) {
            return false;
        }
        return true;
    }
    
    /**
     * Applies the linkbuilder to a piece of content
     *
     * @since 1.2.19
     * @param  mixed $content The content of an post or page
     * @return string
     */
    public function linkContent( $content )
    {
        $link_builder = new LinkBuilder( get_the_ID(), 'post' );
        return $link_builder->linkContent( $content );
    }

}