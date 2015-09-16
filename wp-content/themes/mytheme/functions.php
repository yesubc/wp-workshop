<?php
    //
    define('THEMEROOT', get_stylesheet_directory_uri());
    define('IMAGES', THEMEROOT.'/assets/images/');
    define('SITEURL','http://localhost:1234/projects/workshop/wp-workshop/');


    function theme_name_scripts() {
        wp_enqueue_style('style', get_stylesheet_uri());
        wp_enqueue_script( 'script', get_template_directory_uri());
    }

    add_action( 'wp_enqueue_scripts', 'theme_name_scripts' );



// Navigation Menus

register_nav_menus(array(
'primary' => __('Primary Menu'),
//'footer' => __('Footer Menu')
));

// Remove Generator
remove_action('wp_head', 'wp_generator');
?>