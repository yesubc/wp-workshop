			<footer>
                <div class="container">
                    <div class="footer-main">
                        <div class="left-holder">
                            <div class="about">
                                <h2><a href="#" title="spirits"><img src= <?php echo IMAGES . "spirits.png"; ?> alt="index.html"></a></h2>
                                <?php dynamic_sidebar('footer-1'); ?>
                            </div>
                            <div class="social">
                                <h2>TWITTER</h2>
                                <ul class="tweets">
                                    <li><a href="#">@theIcyPixels</a> Actually preparing a blog:)<span class="time">10 minutes ago</span></li>
                                    <li>Inspired by <a href="#">@collis'</a> #10BootstrappingTips #vime <span class="time">1 hour ago</span></li>
                                </ul>
                            </div>
                        </div>
                        <div class="right-holder">
                            <div class="tag-div">
                                <h2>USEFUL TAGS</h2>
                                <?php 
                                 // For tags
                                    $args = array(
                                        'smallest'                  => 12, 
                                        'largest'                   => 12,
                                        'unit'                      => 'px', 
                                        'number'                    => 8,  
                                        'format'                    => 'list',
                                        'separator'                 => "\n",
                                        'orderby'                   => 'id', 
                                        'order'                     => 'ASC',
                                        'exclude'                   => null, 
                                        'include'                   => null, 
                                        'topic_count_text_callback' => default_topic_count_text,
                                        'link'                      => 'view', 
                                        'taxonomy'                  => 'post_tag', 
                                        'echo'                      => true,
                                        'child_of'                  => null, // see Note!
                                    );
                                    wp_tag_cloud($args); 
                                ?>
                                
                            </div>
                            <div class="flickr">
                                <h2>FLICKR</h2>
                                <ul class="flickr-ul">
                                    <li class="flickr-img"><a href="#"><img src=<?php echo IMAGES . "flickr-img.png"; ?> alt="flickr image"></a></li>
                                    <li class="flickr-img"><a href="#"><img src=<?php echo IMAGES . "flickr-img.png"; ?> alt="flickr image"></a></li>
                                    <li class="flickr-img"><a href="#"><img src=<?php echo IMAGES . "flickr-img.png"; ?> alt="flickr image"></a></li>
                                    <li class="flickr-img"><a href="#"><img src=<?php echo IMAGES . "flickr-img.png"; ?> alt="flickr image"></a></li>
                                    <li class="flickr-img"><a href="#"><img src=<?php echo IMAGES . "flickr-img.png"; ?> alt="flickr image"></a></li>
                                    <li class="flickr-img"><a href="#"><img src=<?php echo IMAGES . "flickr-img.png"; ?> alt="flickr image"></a></li>
                                </ul>
                            </div>
                        </div>	
                    </div>
                </div>
                <div class="sub-footer">
                    <div class="container">
                        <div class="copy">&copy; 2013 Spirits Theme. Proudly made by 
                            <span class="highlight">
                                <a href="<?php echo esc_url( __( 'https://wordpress.org/', 'Spirits') ); ?>">Pirate_Dominic</a>
                            </span>
                            | Powered by 
                            <span class="highlight">
                                <a href="<?php echo esc_url( __( 'https://photoshop.com/' , 'Spirits' ) ); ?>">Photoshop&#8482;</a>
                            </span>
                        </div>
                        <ul class="social-icons">
                            <li><a href="<?php echo esc_url( __( 'https://www.facebook.com/' ) ); ?>" title="facebook">facebook</a></li>
                            <li class="tw"><a href="<?php echo esc_url( __( 'https://www.twitter.com/' ) ); ?>" title="twitter">twitter</a></li>
                            <li class="vm"><a href="<?php echo esc_url( __( 'https://www.vimeo.com/' ) ); ?>" title="vimeo">vimeo</a></li>
                            <li class="dt"><a href="<?php echo esc_url( __( 'https://www.envato.com/' ) ); ?>" title="envato">envato</a></li>
                        </ul>
                    </div>
                </div>
            </footer>
        </div>
    </body>
</html>
