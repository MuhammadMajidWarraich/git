<?php

namespace ILJ\Database;

use  ILJ\Core\Options ;
use  ILJ\Core\Options\Whitelist ;
use  ILJ\Helper\Blacklist ;
/**
 * Postmeta wrapper for the inlink postmeta
 *
 * @package ILJ\Database
 * @since   1.0.0
 */
class Postmeta
{
    const  ILJ_META_KEY_LINKDEFINITION = 'ilj_linkdefinition' ;
    /**
     * Returns all Linkdefinitions from postmeta table
     *
     * @since  1.0.0
     * @return array
     */
    public static function getAllLinkDefinitions()
    {
        global  $wpdb ;
        $meta_key = self::ILJ_META_KEY_LINKDEFINITION;
        $public_post_types = Options::getOption( \ILJ\Core\Options\Whitelist::getKey() );
        $public_post_types_list = "'" . implode( "','", $public_post_types ) . "'";
        $query = "\n            SELECT postmeta.*\n            FROM {$wpdb->postmeta} postmeta\n            LEFT JOIN {$wpdb->posts} posts ON postmeta.post_id = posts.ID\n            WHERE postmeta.meta_key = '{$meta_key}'\n            AND posts.post_status = 'publish'\n            AND posts.post_type IN ({$public_post_types_list})\n        ";
        return $wpdb->get_results( $query );
    }
    
    /**
     * getLinkDefinitionsById
     *
     * @param  int $id
     * @return array
     */
    public static function getLinkDefinitionsById( $id )
    {
        global  $wpdb ;
        $meta_key = self::ILJ_META_KEY_LINKDEFINITION;
        $public_post_types = Options::getOption( \ILJ\Core\Options\Whitelist::getKey() );
        $public_post_types_list = "'" . implode( "','", $public_post_types ) . "'";
        $query = "\n            SELECT postmeta.*\n            FROM {$wpdb->postmeta} postmeta\n            LEFT JOIN {$wpdb->posts} posts ON postmeta.post_id = posts.ID\n            WHERE postmeta.meta_key = '{$meta_key}'\n            AND posts.post_status = 'publish'\n            AND posts.post_type IN ({$public_post_types_list}) AND posts.ID = {$id}\n        ";
        return $wpdb->get_results( $query );
    }
    
    /**
     * Removes all link definitions from postmeta table
     *
     * @since  1.1.3
     * @return int
     */
    public static function removeAllLinkDefinitions()
    {
        global  $wpdb ;
        $meta_key = self::ILJ_META_KEY_LINKDEFINITION;
        return $wpdb->delete( $wpdb->postmeta, array(
            'meta_key' => $meta_key,
        ) );
    }

}