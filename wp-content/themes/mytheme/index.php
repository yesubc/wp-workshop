<?php get_header(); ?>
<div class="col2-right-layout">
        <div class="container">
            <div class="main">
                <div class="col-main">
                    <?php
                        if(have_posts()):

                        while (have_posts()) : the_post();?>
                        <article class="post">
                            <p><img src="<?php echo IMAGES;?>blog.png" alt=""></p>
                            <div>
                                AUTHOR: <?php the_author(); ?> 
                                POSTED: <?php the_time('jS F Y') ?>
                                CATEGORY: <?php the_category(); ?>
                            </div>
                            <h2><a href="<?php the_permalink();?>"><?php the_title();?></a></h2>
                            <?php the_content();?>
                        </article>

                        <?php endwhile;

                        else:
                            echo "<p>No content found</p>";

                        endif;
                    ?>
                </div>
            </div>
            <div class="col-right">
                Sidebar
            </div>
        </div>
    </div>
<?php get_footer(); ?>