<?php

function outlet_post_types() {
  // Outlet Post type
  register_post_type('outlet', array(
    'supports' => array('title', 'editor', 'excerpt'),
    'rewrite' => array('slug' => 'outlets'),
    'has_archive' => true,
    'public' => true,
    'labels' => array(
      'name' => 'Outlets',
      'add_new_item' => 'Add New Outlet',
      'edit_item' => 'Edit Outlet',
      'all_items' => 'All Outletes',
      'singular_name' => 'Outlet'
    ),
    'menu_icon' => 'dashicons-location-alt'
  ));

}

add_action('init', 'outlet_post_types');