<footer>
    <div class="container">
        <div class="ft-main">
            <h1 class="logo">
                <a href="<?php 
                    echo esc_url( home_url( '/' ) ); ?>" title="<?php 
                    echo esc_attr( get_bloginfo( 'name', 'display' ) ); ?>" rel="home"><?php 
                    bloginfo( 'name' ); ?>
                </a>
            </h1>
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus</p>
            <?php bloginfo('name');?> - &copy; <?php echo date('Y');?>
            <?php
                $args = array(
                    'theme_location' => 'footer'
                    );
            ?>
            <?php //wp_nav_menu( $args);?>
            <?php //wp_footer();?>
        </div>
    </div>
</footer>
</div>
<script src="<?php echo THEMEROOT;?>/bower_components/jquery/dist/jquery.min.js"></script>
</body>
</html>