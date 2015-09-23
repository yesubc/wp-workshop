<?php get_header(); ?>
<div class="breadcrumb">
    <div class="container">
        <h2>Standard Post</h2>
        <ul>
            <li><a href="<?php echo get_home_url(); ?>" title="Home">Home</a></li>
            <li><a href="<?php echo esc_url( get_permalink( get_page_by_title( 'Blog' ) ) ); ?>" title="Blog">Blog</a></li>
            <li>Standard Post</li>
        </ul>
    </div>
</div>

<div class="col-2-right-layout">
    <div class="container">
        <div class="main">
            <div class="col-main post">
                <ul>
                    <?php 
                        $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
                        $args = array('type' => 'post', 'posts_per_page' => 2, 'paged' => $paged );
						if(have_posts($args)):

							while(have_posts()): the_post(); ?>	
		                        <li id="post-<?php the_ID(); ?>">
                                    <div class="video">
                                    <?php 
                                    	// Defining default array for post thumbnail
                                        $default_attr = array(
                                        	'title' => trim( strip_tags(get_post(get_post_thumbnail_id())->post_title))
                                        );

										if ( has_post_thumbnail() ) { // check if the post has a Post Thumbnail assigned to it.
											the_post_thumbnail("full", $default_attr);
										} ?>
                                    </div>
                                    <ul class="post-user">
                                        <li class="icon-user"><?php the_author_posts_link(); ?></li>
                                        <li class="icon-calendar"><a href="#" title="date"><?php echo(get_the_date('j F Y')); ?></a></li>
                                        <li class="icon-film"><a href="#" title="other info"><?php the_category(); ?></a></li>
                                        <!-- <li> <?php edit_post_link(); ?></li> -->
                                    </ul>
                                    <h2><?php the_title(); ?></h2>
                                    <?php the_content(); ?>
		                        </li>
                                <ul class="post-info">
                                    <li class="author"><span>author</span>by<a href="#" title="author info"> <?php the_author(); ?></a>, Visual Designer for Spirits</li>
                                    <li class="download"><span>download</span><a href="#" title="download">Spirits-License.pdf (10 Mb)<img src="<?php echo IMAGES. "progress-bar.png" ?>"></a></li>
                                </ul>
                                <h3>Comments:</h3>
                            <?php
                                if( comments_open() ) :

                                    comments_template();

                                else :
                            ?>
                                <h2>Comments are closed for this aticle.</h2>
                            <?php 

                                endif;
							endwhile;

						else :?>
						<h2>No posts to display.</h2>
					<?php 

						endif;

					?>
                </ul>
              	
            </div>
        </div>
       <?php get_sidebar(); ?>
    </div>
</div>
<?php get_footer(); ?>