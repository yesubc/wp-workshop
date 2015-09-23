<?php 
/*
    Template Name: Default
 */
get_header(); ?>
<div class="breadcrumb">
    <div class="container">
        <h2>Custom Page</h2>
            
                <!-- <li><a href="<?php echo get_home_url(); ?>" title="Home">Home</a></li>
                <li><a href="<?php echo esc_url( get_permalink( get_page_by_title( 'Blog' ) ) ); ?>" title="Blog">Blog</a></li>
                <li>Standard Blog</li>
            </ul> -->
        <ul>
            <?php 
            // if there is a parent, display the link
            // var_dump($post->post_parent );
            $parent_title = get_the_title( $post->post_parent );
            if ( $parent_title != the_title( ' ', ' ', false ) ) {
                echo '<li><a href="' . get_permalink( $post->post_parent ) . '" title="' . $parent_title . '">' . $parent_title . '</a></li> ';
            } 
            // then go on to the current page link
            ?>
            <li><a href="<?php the_permalink(); ?>" rel="bookmark" title="<?php the_title_attribute(); ?>">
            <?php the_title(); ?></a></li>
        </ul>
    </div>
</div>

<div class="col-2-right-layout">
    <div class="container">
    <?php the_post();
        the_title();
        the_content(); ?>
    </div>
</div>
<?php get_footer(); ?>