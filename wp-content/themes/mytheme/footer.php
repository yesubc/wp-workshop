<footer role="contentinfo">
    <div class="container">
        <div class="ft-main">
            

            <?php get_sidebar( 'footer' ); ?>

        </div>
    </div>
    <div class="copyrights">
        <div class="container">
            <?php bloginfo('name');?> - &copy; <?php echo date('Y');?>
            <?php
                $args = array(
                    'theme_location' => 'footer'
                    );
            ?>

            <ul class="social-icons">
                <li><a href="#" title="facebook">facebook</a></li>
                <li class="tw"><a href="#" title="twitter">twitter</a></li>
                <li class="vm"><a href="#" title="vimeo">vimeo</a></li>
                <li class="dt"><a href="#" title="envato">envato</a></li>
            </ul>
        </div>

    </div>
</footer>
</div>
</body>
</html>