<?php
    //
    define('THEMEROOT', get_stylesheet_directory_uri());
    define('IMAGES', THEMEROOT.'/images');

    // Remove Generator
    remove_action('wp_head', 'wp_generator');
?>