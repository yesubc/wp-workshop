<footer>
    <?php bloginfo('name');?> - &copy; <?php echo date('Y');?>
    <?php
        $args = array(
            'theme_location' => 'footer'
            );
    ?>
    <?php //wp_nav_menu( $args);?>
    <?php //wp_footer();?>
</footer>
</body>
</html>