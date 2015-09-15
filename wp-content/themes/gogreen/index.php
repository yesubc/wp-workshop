<?php get_header(); ?>
<div class="breadcrumb">
    <div class="container">
        <h2>Blog Standard</h2>
        <ul>
            <li><a href="#" title="Home">Home</a></li>
            <li><a href="#" title="Contact">Blog</a></li>
            <li>Standard Blog</li>
        </ul>
    </div>
</div>

<div class="col-2-right-layout">
    <div class="container">
        <div class="main">
            <div class="col-main">
                <div class="blog">
                    <ul>
	                    <?php 
							$paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
							$args = array('posts_per_page' => 2, 'paged' => $paged );
							query_posts($args); 

							if(have_posts()):

								while(have_posts()): the_post(); ?>	
			                        <li id="post-<?php the_ID(); ?>">
			                           
	                                    <div class="post-status">
	                                        <ul>
	                                            <li class="icon-picture"><a href="#" title="blog picture">picture</a></li>
	                                            <li class="icon-online"><a href="#" title="online">picture</a></li>
	                                        </ul>
	                                    </div>
	                                    <div class="post-image post">
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
	                                            <li class="icon-film"><a href="#" title="other info">Museum Childhood Corporation</a></li>
	                                        </ul>
	                                        <h2><a href="<?php the_permalink(); ?>" title="blog title"><?php the_title(); ?></a></h2>
	                                        <p><?php the_excerpt(); ?></p>
	                                        <a href="<?php the_permalink(); ?>" class="read-more">Read more</a>
	                                    </div>

			                        </li>
                        <?php
								endwhile;
							next_posts_link();
							previous_posts_link();
							else :?>
							<h2>No posts to display.</h2>
						<?php 

							endif;

						?>
                    </ul>
                </div>
              	<?php  
          			if (function_exists("pagination")) {
				    	pagination(4);
			    	}
				 ?>
                <!-- <div class="pagination">
                    <ul>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">></a></li>
                    </ul>
                </div> -->
            </div>
        </div>
        <div class="col-right">
            <form action="#" method="POST">
                <input type="text">
            </form>
            <div class="common-box">
                <div class="title">
                    CATEGORIES
                </div>
                <ul class="category">
                    <li><a href="#" title="Illustrator Design">Illustrator Design (10)</a></li>
                    <li><a href="#" title="Web Design">Web Design and Development (5)</a></li>
                    <li><a href="#" title="Movie">Movie Service and Share (7)</a></li>
                    <li><a href="#" title="Photography">Photography (21)</a></li>
                    <li><a href="#" title="Gif">Gif Animations (4)</a></li>
                    <li><a href="#" title="Branding Logos">Branding Logos (30)</a></li>
                </ul>
            </div>
            <div class="common-box">
                <div class="title">
                    ABOUT THE BLOG
                </div>
                <p>Perspiciatis unde omnis iste natus error sit volu ptatem accusantium doloremque laudantium, totam rem aperiam. Perspiciatis unde omnis ist e natus error sit voluptatem accusantium dolor que laudantium, totam rem aperiam, eaque ab illo inventore veritatis et quasi architecto beata e vitae dicta sunt explicabo. </p>
            </div>
            <div class="common-box">
                <div class="title">
                    ARCHIVES
                </div>
                <ul class="archive">
                    <li><a href="#" title="January 2015">January 2015</a></li>
                    <li><a href="#" title="December 2014">December 2014</a></li>
                    <li><a href="#" title="November 2014">November 2014</a></li>
                    <li><a href="#" title="October 2014">October 2014</a></li>
                    <li><a href="#" title="September 2014">September 2014</a></li>
                    <li><a href="#" title="August 2014">August 2014</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<?php get_footer(); ?>