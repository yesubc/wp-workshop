<?php
    //
    define('THEMEROOT', get_stylesheet_directory_uri());
    define('IMAGES', THEMEROOT.'/assets/images/');
    define('SITEURL','http://localhost:1234/projects/workshop/wp-workshop/');


function mytheme_setup() {

    //load_theme_textdomain( 'story', get_template_directory() . '/languages' );

    // Add default posts and comments RSS feed links to head.
    add_theme_support( 'automatic-feed-links' );

    // This theme uses wp_nav_menu() in one location.
    register_nav_menus( array(
        'primary' => __( 'Primary Menu', 'story' ),
    ) );

    // Enable support for Post Formats.
    add_theme_support( 'post-formats', array( 'image', 'video', 'quote', 'link', 'audio' ) );

    // Enable support for HTML5 markup.
    add_theme_support( 'html5', array( 'comment-list', 'comment-form', ) );
    
    if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
        wp_enqueue_script( 'comment-reply' );
    }

    // Remove Generator
    remove_action('wp_head', 'wp_generator');
}

add_action( 'after_setup_theme', 'mytheme_setup' );

function mytheme_body_classes( $classes ) {

    if ( is_active_sidebar( 'sidebar-2' ) ) {
        $classes[] = 'footer-widgets';
    }

    return $classes;
}
add_filter( 'body_class', 'mytheme_body_classes' );

// Sidebar
function mytheme_widgets_init() {
    register_sidebar( array(
        'name'          => __( 'Sidebar', 'mytheme' ),
        'id'            => 'sidebar-1',
        'before_widget' => '<aside id="%1$s" class="widget %2$s">',
        'after_widget'  => '</aside>',
        'before_title'  => '<h1 class="widget-title">',
        'after_title'   => '</h1>',
    ) );

    register_sidebar( array(
        'name'          => __( 'Footer Widget', 'mytheme' ),
        'id'            => 'sidebar-2',
        'description'   => __( 'Appears in the footer section of the site.', 'mytheme' ),
        'before_widget' => '<aside id="%1$s" class="widget %2$s">',
        'after_widget'  => '</aside>',
        'before_title'  => '<h1 class="widget-title">',
        'after_title'   => '</h1>',
    ) );    
}  

add_action( 'widgets_init', 'mytheme_widgets_init' );

//Sidebar Wrapper
function story_widget_content_wrapper($content) {
    
    $content = '<div class="widget-content">'.$content.'</div>';
    return $content;
}
add_filter('widget_text', 'story_widget_content_wrapper');


function mytheme_scripts() {
    wp_enqueue_style( 'mytheme-style', get_stylesheet_uri() );
    wp_enqueue_script( 'story-slicknav', get_template_directory_uri() . '/bower_components/jquery/dist/jquery.min.js' );
}

add_action( 'wp_enqueue_scripts', 'mytheme_scripts' );