<?php
define('THEMEROOT', get_template_directory_uri());
define('IMAGES', THEMEROOT . '/images/');

function spirits_script_setup(){
	wp_enqueue_style('resetstyle', get_template_directory_uri() . '/css/reset.css', array(), '1.0.0', 'all');
	wp_enqueue_style('fontstyle', get_template_directory_uri() . '/css/font.css', array(), '1.0.0', 'all');
	wp_enqueue_style('customstyle', get_template_directory_uri() . '/css/custom.css', array(), '1.0.0', 'all');
	wp_enqueue_style('layoutstyle', get_template_directory_uri() . '/css/layout.css', array(), '1.0.0', 'all');
	wp_enqueue_style('mediastyle', get_template_directory_uri() . '/css/media.css', array(), '1.0.0', 'all');
}

add_action('wp_enqueue_scripts', 'spirits_script_setup');

function spiritsThemeSetup(){
	add_theme_support('menus');
	register_nav_menu('main-navigation','Header Navigation');
}

add_action('init','spiritsThemeSetup');

add_theme_support('post-thumbnails');
add_theme_support('post-formats', array('image', 'video','audio'));
?>