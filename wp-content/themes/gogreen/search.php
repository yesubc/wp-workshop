<?php get_header(); ?>
    <div class="breadcrumb">
        <div class="container">
            <h2>Blog Standard</h2>
            <ul>    
                <li><a href="<?php echo get_home_url(); ?>" title="Home">Home</a></li>
                <li><a href="<?php echo esc_url( get_permalink( get_page_by_title( 'Blog' ) ) ); ?>" title="Blog">Blog</a></li>
                <li>Standard Blog</li>
            </ul>
        </div>
    </div>

    <div class="col-2-right-layout">
        <div class="container">
            <div class="main">
                <div class="col-main post">
                    <ul>
                        <?php 
                            if(have_posts()):

                                while(have_posts()): the_post(); 
                                   get_template_part('content', 'search');
                                endwhile;
                            else :?>
                            <h2>No posts to display.</h2>
                        <?php 
                            endif;
                            wp_reset_postdata();
                        ?>
                    </ul>
                </div>
            </div>
            <?php get_sidebar(); ?>
        </div>
    </div>
<?php get_footer(); ?>