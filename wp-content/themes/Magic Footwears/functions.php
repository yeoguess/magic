<?php

	// Register Nav Walker class_alias
    require_once('wp_bootstrap_navwalker.php');

    // Setup
    add_theme_support( 'menus' );
    add_theme_support( 'post-thumbnails' );
    add_theme_support( 'title-tag' );

    // Includes
	include(get_template_directory() . '/includes/setup.php');
	include(get_template_directory() . '/includes/front/init.php' );
	include(get_template_directory() . '/includes/widgets.php');
	include(get_template_directory() . '/includes/customizer.php');

	// Acion and Filter Hooks
    add_action('after_setup_theme', 'magic_setup_theme');
    add_action('init', 'create_post_type');
    add_action('widgets_init', 'magic_init_widgets');



function magicFiles() {

	// Load Stylesheet
	wp_enqueue_style( 'custom_font', '//fonts.googleapis.com/css?family=Nunito:200,400' );
	wp_enqueue_style( 'font_awesome', 'https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css' );
	wp_enqueue_style( 'bootstrap_css', 'https://stackpath.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css' );
	
	wp_enqueue_style('magic_main_styles', get_stylesheet_uri(), NULL, microtime());

	// Load Scripts
	wp_enqueue_script('googleMap', '//maps.googleapis.com/maps/api/js?key=AIzaSyBBXxAamxoE0XpRtEfCqrbHICXPSv3ZaSg&callback=initMap', NULL, '1.0', true);
	wp_enqueue_script( 'bootstrap', 'https://stackpath.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js', array('jquery'), '3.3.5', true );
	wp_enqueue_script('jquery-2', get_template_directory_uri() . '/js/jquery-2.1.1.min.js', array(), '2.1.1', true);
	 // wp_enqueue_script( 'pushy', '//cdnjs.cloudflare.com/ajax/libs/pushy/1.1.0/js/pushy.min.js', array( 'jquery' ));
	wp_enqueue_script('magic_main_scripts', get_theme_file_uri('/js/scripts-bundled.js'), NULL, '1.0', true);
	wp_enqueue_script('magic_main_scripts', get_theme_file_uri('/js/scripts.js'), NULL, '1.0', true);
	wp_enqueue_script('magic_main_scripts', get_theme_file_uri('/js/main.js'), NULL, '1.0', false);
}

add_action( 'wp_enqueue_scripts', 'magicFiles' );

function magicFeatures() {
	
	add_theme_support('title-tag');
	add_theme_support('post-thumbnails');
	add_image_size('professorLandscape', 400, 260, true);
	add_image_size('professorPotrait', 480, 650, true);
	add_image_size('pageBanner', 1500, 350, true);

}

add_action( 'after_theme_support', 'magicFeatures' );



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

function magicMapKey($api) {

	$api['key'] = 'AIzaSyB9HO47f5DdFoGJdN-TkQRNdS1eXAaqrjY';
	return $api;

}

add_filter( 'acf/fields/google_map/api', 'magicMapKey' );