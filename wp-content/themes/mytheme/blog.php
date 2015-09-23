<?php 
	/*Template name: Blog Page*/	
?>
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
                    	<?php query_posts(array('type'=> 'post'));

                    		if(have_posts()):
                    			while(have_posts()):
                    				the_post();
                    	?>	
                    	<li id="post-<?php the_ID();?>">
							 <div class="post-status">
	                            <ul>
	                                <li class="icon-picture"><a href="#" title="blog picture">picture</a></li>
	                                <li class="icon-online"><a href="#" title="online">picture</a></li>
	                            </ul>
                       		</div>
                        	<div class="post-image post">
	                            <div class="video">
	                                <?php if(has_post_thumbnail()){
	                                	the_post_thumbnail('full');	
	                                }	
                             		?>
	                            </div>
	                            <ul class="post-user">
	                                <li class="icon-user"><a href="#" title="author"><?php the_author();?></a></li>
	                                <li class="icon-calendar"><a href="#" title="date"><?php echo(get_the_date('j F Y')); ?></a></li>
	                                <li class="icon-film"><a href="#" title="other info"><?php the_category(); ?></a></li>
	                            </ul>
	                            <h2><a href="<?php the_permalink(); ?>" title="blog title"><?php the_title(); ?></a></h2>
	                            <p><?php the_excerpt(); ?></p>
	                            <a href="<?php  the_permalink(); ?>" class="read-more">Read more</a>
	                        </div>
                    	</li>	
                    	<?php		
                    	endwhile;
                			else:
        				?>
            				<h2>No posts to display</h2>
                    	<?php endif; ?>
                	</ul>
            	</div>
        	</div>
    	</div>
	</div>
</div>
<?php get_footer(); ?>
