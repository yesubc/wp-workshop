<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset='<?php bloginfo('charset');?>'>
    <title><?php bloginfo('name'); wp_title('|') ?></title>
    <meta name='description' content="<?php bloginfo('description'); ?>">
    <meta content='width=device-width, initial-scale=1.0' name='viewport'>
    <?php wp_head(); ?>
	<title>Spirits</title>
</head>
<body>
	<div class="main-wrapper">
	    <header>
	        <div class="container">
	            <h1 class="logo"><a href="<?php echo get_home_url(); ?>" title="spirits"><img src=<?php echo IMAGES. "spirits.png" ?> alt="Spirits"></a></h1>
	            <?php
	        	$defaults = array(
					'theme_location' => 'main-navigation', //Defines which navigation location to use
					'menu' => '',
					'container' => false,
					'container_class' => '',
					'container_id' => '',
					'menu_class' => 'navigation',
					'menu_id' => '',
					'echo' => true,
					'fallback_cb' => 'wp_page_menu',
					'before' => '',
					'after' => '',
					'link_before' => '',
					'link_after' => '',
					'items_wrap' => '<ul class="%2$s">%3$s</ul>',
					'depth'  => 0,
					'walker' => ''
				);
	        	wp_nav_menu($defaults);
	        ?>
	        </div>	
	    </header>