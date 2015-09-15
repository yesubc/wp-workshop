<!DOCTYPE html>
<html <?php language_attributes();?>>
<head>
        <meta charset='<?php bloginfo('charset');?>'>
        <title>Spirits Blog</title>
        <meta content='width=device-width, initial-scale=1.0' name='viewport'>
        <?php wp_head(); ?>
        <!-- <link rel="stylesheet" href="css/reset.css" type="text/css">
        <link rel="stylesheet" href="css/fonts.css" type="text/css">
        <link rel="stylesheet" href="css/custom.css" type="text/css">
        <link rel="stylesheet" href="css/layout.css" type="text/css">
        <link rel="stylesheet" href="css/media.css" type="text/css"> -->
    </head>
<body>
	<div class="main-wrapper">
	    <header>
	        <div class="container">
	            <h1 class="logo"><a href="#" title="spirits"><img src=<?php echo IMAGES. "spirits.png" ?> alt="Spirits"></a></h1>
	            <?php 
					$defaults = array(
						'theme_location'  => 'navigation', //Defines which navigation location to use
						'menu'            => '',
						'container'       => false,
						'container_class' => '',
						'container_id'    => '',
						'menu_class'      => 'navigation',
						'menu_id'         => '',
						'echo'            => true,
						'fallback_cb'     => 'wp_page_menu',
						'before'          => '',
						'after'           => '',
						'link_before'     => '',
						'link_after'      => '',
						'items_wrap'      => '<ul class="%2$s">%3$s</ul>',
						'depth'           => 0,
						'walker'          => ''
					);

	            	wp_nav_menu($defaults); ?>
	            <!-- <select name="navigation" id="select-nav">
	                <option>Home</option>
	                <option>About</option>
	                <option>Shortcodes</option>
	                <option>Portfolio</option>
	                <option>Blog</option>
	                <option>Contact</option>
	            </select>
	            <ul class="navigation">
	                <li><a href="#">Home</a></li>
	                <li><a href="#">About</a></li>
	                <li><a href="#">Shortcodes</a></li>
	                <li><a href="post.html">Post</a></li>
	                <li><a href="blog.html">Blog</a></li>
	                <li><a href="contact.html">Contact</a></li>
	            </ul> -->
	        </div>	
	    </header>