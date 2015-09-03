<?php

function machan_resources() {

    wp_enqueue_style('style', get_stylesheet_uri());

}

add_action('wp_enqueue_scripts', 'machan_resources');

// Remove Generator
remove_action('wp_head', 'wp_generator');

// Navigation Menus

register_nav_menus(array(
    'primary' => __('Primary Menu'),
    'footer' => __('Footer Menu')
    ));

?>