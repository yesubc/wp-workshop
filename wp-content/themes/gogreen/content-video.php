 <li id="post-<?php the_ID(); ?>">
                                       
    <div class="post-status">
        <ul>
            <li class="icon-online"><a href="#" title="video online">online</a></li>
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
            <li class="icon-film"><a href="#" title="other info"><?php the_category(); ?></a></li>
        </ul>
        <h2><a href="<?php the_permalink(); ?>" title="blog title"><?php the_title(); ?></a></h2>
        <?php the_excerpt(); ?>
        <a href="<?php the_permalink(); ?>" class="read-more">Read more</a>
    </div>

</li>