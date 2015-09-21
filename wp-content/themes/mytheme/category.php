<?php get_header(); ?>
<?php if ( have_posts() ) : ?>
<div id="primary" class="main">
    <div class="col-main">
            <header class="archive-header">
                <h1 class="archive-title"><?php printf( __( 'Category Archives: %s', 'twentyfourteen' ), single_cat_title( '', false ) ); ?></h1>

                <?php
                    // Show an optional term description.
                    $term_description = term_description();
                    if ( ! empty( $term_description ) ) :
                        printf( '<div class="taxonomy-description">%s</div>', $term_description );
                    endif;
                ?>
            </header><!-- .archive-header -->

            <?php
                    // Start the Loop.
                    while ( have_posts() ) : the_post();

                    get_template_part( 'content', get_post_format() );

                    endwhile;
                    // Previous/next page navigation.
                    //mytheme_paging_nav();

                else :
                    // If no content, include the "No posts found" template.
                    get_template_part( 'content', 'none' );

                endif;
            ?>
            </div></div>
<?php get_footer(); ?>