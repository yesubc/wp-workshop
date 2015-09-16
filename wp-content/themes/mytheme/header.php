<?php
/**
* @package WordPress
* @subpackage mytheme
* @since My Theme 1.0
*/
?>
<!DOCTYPE html>
<html <?php language_attributes(); ?>>
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
<?php wp_head();?>
<!--[if lt IE 9]>
<script src="<?php echo THEMEROOT;?>/bower_components/html5shiv/dist/html5shiv.min.js"></script><script src="js/respond.min.js"></script>
<![endif]-->
</head>
<body <?php body_class();?>>
<div class="main-container">
    <header>
        <div class="container">
            <h1 class="logo">
                <a href="<?php 
                    echo esc_url( home_url( '/' ) ); ?>" title="<?php 
                    echo esc_attr( get_bloginfo( 'name', 'display' ) ); ?>" rel="home"><?php 
                    bloginfo( 'name' ); ?>
                </a>
            </h1>
            <span><?php //bloginfo('description');?></span>
            <?php
                $args = array(
                    'theme_location' => 'primary'
                    );
            ?>
            <?php wp_nav_menu( $args);?> 
        </div>  
    </header>
    <div class="breadcrumb">
        <div class="container">
            <h2><?php echo get_the_title( $ID ); ?> </h2>
            <ul>
                <li><a href="<?php echo SITEURL; ?>">Home</a> <span>/</span> </li>
                <li><a href="<?php echo SITEURL; ?>blog">Blog</a> <span>/</span> </li>      
                <li><?php echo get_the_title( $ID ); ?></li>
            </ul> 
        </div>
    </div>  