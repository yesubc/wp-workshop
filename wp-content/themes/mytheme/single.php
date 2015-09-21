<?php get_header();?>
<div class="col2-right-layout">
    <div class="container">
        <div class="main">
            <div class="col-main">
                <?php
                if(have_posts()) : 
                    while(have_posts()) : the_post(); ?>
                <article>
                    <!--h2><?php the_title();?></h2-->
                    <?php the_content();?>
                </article>
                <?php endwhile; 

                else :
                    echo '<p>No content found</p>';
                endif;?>
            </div>
        </div>
        <?php get_sidebar();?>
    </div>
</div>
<?php get_footer();  ?>