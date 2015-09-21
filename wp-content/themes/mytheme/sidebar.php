<div id="secondary" class="widget-area col-right" role="complementary">
    <?php if ( ! dynamic_sidebar( 'sidebar-1' ) ) : ?>

        <aside id="search" class="widget widget_search">
            <?php get_search_form(); ?>
        </aside>

        <aside id="archives" class="widget">
            <h1 class="widget-title"><?php _e( 'Archives', 'story' ); ?></h1>
            <ul>
                <?php wp_get_archives( array( 'type' => 'monthly' ) ); ?>
            </ul>
        </aside>

    <?php endif; // end sidebar widget area ?>
    
</div><!-- #secondary -->
