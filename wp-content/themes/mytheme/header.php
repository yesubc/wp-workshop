<?php
/**
 * @package WordPress
 * @subpackage mytheme
 * @since My Theme 1.0
 */
?>
<!DOCTYPE html>
<html lang="<?php language_attributes();?>">
<head>
<meta charset="<?php bloginfo('charset');?>">
<title>
    <?php 
        wp_title('|', true, right);
        bloginfo('name');
    ?>
</title>
<meta name="viewport" content="width=device-width">
<meta name="description" content="">
<meta name="keywords" content="">
<link rel="stylesheet" href="<?php echo THEMEROOT;?>/style.css">
<?php wp_head();?>
<script src="<?php echo THEMEROOT;?>/bower_components/html5shiv/dist/html5shiv.min.js"></script>
<script src="<?php echo THEMEROOT;?>/bower_components/jquery/dist/jquery.min.js"></script>
</head>
<body <?php body_class();?>>
<h1><a href="<?php 
    echo esc_url( home_url( '/' ) ); ?>" title="<?php 
    echo esc_attr( get_bloginfo( 'name', 'display' ) ); ?>" rel="home"><?php 
    bloginfo( 'name' ); ?></a></h1>
<span><?php bloginfo('description');?></span>
    
