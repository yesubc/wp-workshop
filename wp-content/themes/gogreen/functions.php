<?php 

// Define theme root
define('THEMEROOT', get_template_directory_uri());
define('IMAGES', THEMEROOT . '/images/');


// Setting up for stylesheets
function spirits_get_css(){
	wp_enqueue_style('resetstyle', get_template_directory_uri() . '/css/reset.css', array(), '1.0.0', 'all');
	wp_enqueue_style('fontstyle', get_template_directory_uri() . '/css/font.css', array(), '1.0.0', 'all');
	wp_enqueue_style('customstyle', get_template_directory_uri() . '/css/custom.css', array(), '1.0.0', 'all');
	wp_enqueue_style('layoutstyle', get_template_directory_uri() . '/css/layout.css', array(), '1.0.0', 'all');
	wp_enqueue_style('mediastyle', get_template_directory_uri() . '/css/media.css', array(), '1.0.0', 'all');
}

add_action('wp_enqueue_scripts', 'spirits_get_css');

// Setting up menus
function spirits_theme_setup()
{
	add_theme_support('menus'); // For menu support
	register_nav_menu('navigation', 'Main Header Navigation');
	register_nav_menu('footer', 'Footer Navigation');
}

add_action('init', 'spirits_theme_setup');
add_theme_support('post-thumbnails');

// Setting Pagination
function pagination($pages = '', $range = 2)
{  
     $showitems = ($range * 2)+1;  
 
     global $paged;
     if(empty($paged)) $paged = 1;
 
     if($pages == '')
     {
         global $wp_query;
         $pages = $wp_query->max_num_pages;
         if(!$pages)
         {
             $pages = 1;
         }
     }   
 
     if(1 != $pages)
     {
     	var_dump($paged,$showitems,$pages);
         echo "<div class=\"pagination\"><ul>";
         if($paged > 1 && $showitems < $pages) echo "<li><a href='".get_pagenum_link($paged - 1)."'>&lsaquo; asda</a><li>";
 
         for ($i=1; $i <= $pages; $i++)
         {
             if (1 != $pages &&( !($i >= $paged+$range+1 || $i <= $paged-$range-1) || $pages <= $showitems ))
             {
                 echo ($paged == $i)? "<li class=\"active\">".$i."</li>":"<li><a href='".get_pagenum_link($i)."'>".$i."</a></li>";
             }
         }
 
         if ($paged < $pages && $showitems < $pages) echo "<a href=\"".get_pagenum_link($paged + 1)."\">&rsaquo; aasd</a>";
         echo "</ul></div>\n";
     }
}

add_action('init', 'pagination');

