<?php 

/*
    ===================================
        Define theme root
    ===================================
*/
define('THEMEROOT', get_template_directory_uri());
define('IMAGES', THEMEROOT . '/images/');

/*
    ===================================
        Setting up for stylesheets
    ===================================
*/
function spirits_script_setup(){
	wp_enqueue_style('resetstyle', get_template_directory_uri() . '/css/reset.css', array(), '1.0.0', 'all');
	wp_enqueue_style('fontstyle', get_template_directory_uri() . '/css/font.css', array(), '1.0.0', 'all');
	wp_enqueue_style('customstyle', get_template_directory_uri() . '/css/custom.css', array(), '1.0.0', 'all');
	wp_enqueue_style('layoutstyle', get_template_directory_uri() . '/css/layout.css', array(), '1.0.0', 'all');
	wp_enqueue_style('mediastyle', get_template_directory_uri() . '/css/media.css', array(), '1.0.0', 'all');
}

add_action('wp_enqueue_scripts', 'spirits_script_setup');

/*
    ===================================
        Setting up menus
    ===================================
*/
function spirits_theme_setup()
{
	add_theme_support('menus'); // For menu support
	register_nav_menu('navigation', 'Main Header Navigation');
	register_nav_menu('footer', 'Footer Navigation');
}

add_action('init', 'spirits_theme_setup');

/*
    ===================================
        Theme support fuctions
    ===================================
*/
add_theme_support('post-thumbnails');
add_theme_support('post-formats', array('image', 'video','audio'));

/*
    ===================================
        Sidebar fuctions
    ===================================
*/
function spirits_widget_setup()
{
    register_sidebar(
        array(
            'name' => 'Sidebar',
            'id' => 'sidebar-1',
            'class' => 'sidebar',
            'description' => 'Standard Sidebar',
            'before_widget' => '<div class="common-box">',
            'after_widget' => '</div>',
            'before_title' => '<h2 class="title">',
            'after_title' => '</h2>',
            )
    );

    register_sidebar(
        array(
            'name' => 'Footer',
            'id' => 'footer-1',
            'class' => 'footer',
            'description' => 'Standard Footer',
            'before_widget' => '<div class="common-box">',
            'after_widget' => '</div>',
            'before_title' => '<h2>',
            'after_title' => '</h2>',
            )
    );
}

add_action('widgets_init', 'spirits_widget_setup');
/*
    ===================================
        Head Function
    ===================================
*/

function spirits_remove_version(){
    return '';
}
add_filter('the_generator', 'spirits_remove_version');

/*
    ===================================
        Setting Pagination Function
    ===================================
*/
function wpbeginner_numeric_posts_nav() {

    if( is_singular() )
        return;

    global $wp_query;

    /** Stop execution if there's only 1 page */
    if( $wp_query->max_num_pages <= 1 )
        return;

    $paged = get_query_var( 'paged' ) ? absint( get_query_var( 'paged' ) ) : 1;
    $max   = intval( $wp_query->max_num_pages );

    /** Add current page to the array */
    if ( $paged >= 1 )
        $links[] = $paged;

    /** Add the pages around the current page to the array */
    if ( $paged >= 3 ) {
        $links[] = $paged - 1;
        $links[] = $paged - 2;
    }

    if ( ( $paged + 2 ) <= $max ) {
        $links[] = $paged + 2;
        $links[] = $paged + 1;
    }

    echo '<div class="pagination"><ul>' . "\n";

    /** Previous Post Link */
    if ( get_previous_posts_link() )
        printf( '<li>%s</li>' . "\n", get_previous_posts_link('<') );

    /** Link to first page, plus ellipses if necessary */
    if ( ! in_array( 1, $links ) ) {
        $class = 1 == $paged ? ' class="active"' : '';

        printf( '<li%s><a href="%s">%s</a></li>' . "\n", $class, esc_url( get_pagenum_link( 1 ) ), '1' );

        if ( ! in_array( 2, $links ) )
            echo '<li>…</li>';
    }

    /** Link to current page, plus 2 pages in either direction if necessary */
    sort( $links );
    foreach ( (array) $links as $link ) {
        $class = $paged == $link ? ' class="active"' : '';
        printf( '<li%s><a href="%s">%s</a></li>' . "\n", $class, esc_url( get_pagenum_link( $link ) ), $link );
    }

    /** Link to last page, plus ellipses if necessary */
    if ( ! in_array( $max, $links ) ) {
        if ( ! in_array( $max - 1, $links ) )
            echo '<li>…</li>' . "\n";

        $class = $paged == $max ? ' class="active"' : '';
        printf( '<li%s><a href="%s">%s</a></li>' . "\n", $class, esc_url( get_pagenum_link( $max ) ), $max );
    }

    /** Next Post Link */
    if ( get_next_posts_link() )
        printf( '<li>%s</li>' . "\n", get_next_posts_link('>') );

    echo '</ul></div>' . "\n";

}