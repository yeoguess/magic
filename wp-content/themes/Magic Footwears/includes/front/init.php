<?php

//Exit if accccessed directly
if ( !defined( 'ABSPATH' ) ) {
    exit;
}

function my_rewrite_flush() {
    // First, we "add" the custom post type via the above written function.
    // Note: "add" is written with quotes, as CPTs don't get added to the DB,
    // They are only referenced in the post_type column with a post entry, 
    // when you add a post of this CPT.
    create_post_type();

    // ATTENTION: This is *only* done during plugin activation hook in this example!
    // You should *NEVER EVER* do this on every page load!!
    flush_rewrite_rules();
}
register_activation_hook( __FILE__, 'my_rewrite_flush' );

function create_post_type() {
    
    // Product
    $labels = array(
            'name'                      => _x('Product', 'post type general name'),
            'singular_name'             => _x('Product', 'post type singular name'),
            'add_new'                   => _x('Add New', 'Product'),
            'add_new_item'              => __('Add new Product'),
            'edit_item'                 => __('Edit Product'),
            'new_item'                  => __('New Product'),
            'view_item'                 => __('View Product'),
            'search_items'              => __('Search Product'),
            'not_found'                 =>  __('No Product found'),
            'not_found_in_trash'        => __('No Product found in Trash'),
            'parent_item_colon'         => ''
      );

    $args = array(
            'labels'                    => $labels,
            'public'                    => true,
            'publicly_queryable'        => true,
            'show_ui'                   => true,
            'menu_icon'                 => 'dashicons-cart',
            'rewrite'                   => true,
            'query_var'                 => true,
            'capability_type'           => 'post',
            'hierarchical'              => false,
            '_builtin'                  => false, // It's a custom post type, not built in!
            'rewrite'  => array(
                        'slug'          => 'Product',
                        'with_front'    => true
                        ),
            'show_in_nav_menus'         => false,
            'menu_position'             => 5,
            'supports'  => array(
                        'title'
                        ),
      );
      
      register_post_type('Product',$args);
}
 
?>