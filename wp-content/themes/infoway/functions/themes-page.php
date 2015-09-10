<?php

// Add scripts and stylesheet
function enqueue_styles() {
    global $themename, $themeslug, $options;
    wp_register_style($themeslug . 'storecss', get_template_directory_uri() . '/functions/theme-page-style.css');
    wp_enqueue_style($themeslug . 'storecss');
}

// Add page to the menu
function inkthemes_add_menu() {
    $page = add_theme_page('InkThemes Themes Page', __('InkThemes Themes', 'infoway'), 'administrator', 'themes', 'inkthemes_page_init');
    add_action('admin_print_styles-' . $page, 'enqueue_styles');
}

add_action('admin_menu', 'inkthemes_add_menu');

// Create the page
function inkthemes_page_init() {
    $root = get_template_directory_uri();
    ?>
    <div id="contain">
        <div id="themesheader">
            <a href="<?php echo esc_url('http://www.inkthemes.com/'); ?>" target="_blank">
                <img src="<?php echo $root; ?>/functions/images/inkthemes-logo.png" />
            </a>
            <br />
            <br/>
            <hr/>
            <div style="clear: both;"></div>
        </div>
        <div id="container">
            <div class="inktheme-themes">
                <div class="theme-image">
                    <a href="<?php echo esc_url('http://www.inkthemes.com/wp-themes/colorway-wp-theme/'); ?>" target="_blank">
                        <img src="<?php echo $root; ?>/functions/images/colorway.jpg" />
                    </a>
                </div>
                <div class="theme-desc">
                    <div class="theme-title">
                        <a href="<?php esc_url('http://www.inkthemes.com/wp-themes/colorway-wp-theme/'); ?>" target="_blank">
                            <?php _e('Colorway Theme', 'infoway'); ?>
                        </a>
                    </div>
                    <br />
                    <?php _e('The best thing about Colorway Theme is the ease with the help of which you can convert your Website in various different Niches. &#8220;Your Clients Would Love Their Site & You Would smile in the back thinking about the Time That You Spend Building their Sites.&#8221;', 'infoway'); ?>
                    <br /><br />
                    <?php _e('Colorway   Theme is perfect for quick and easy blogging with a clean and modern interface and tons of features. The layout does not distract from your content, which is vital for a site devoted to business & blogging. <br /><br />', 'infoway'); ?>
                    <div class="buy">
                        <a href="<?php echo esc_url('http://www.inkthemes.com/wp-themes/colorway-wp-theme/'); ?>" target="_blank">
                            <?php _e('Buy Colorway Theme', 'infoway'); ?>
                        </a>
                        &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
                        <a href="<?php echo esc_url('http://wordpress.org/extend/themes/colorway'); ?>" target="_blank">
                            <?php _e('Try Colorway Lite for FREE', 'infoway'); ?>
                        </a>
                    </div>
                </div>
            </div>
            <div class="inktheme-themes">
                <div class="theme-image">
                    <a href="<?php echo esc_url('http://www.inkthemes.com/wp-themes/local-business-wordpress-theme/'); ?>" target="_blank">
                        <img src="<?php echo $root; ?>/functions/images/Big-thames-Local-Business-theme-1.png" />
                    </a>
                </div>
                <div class="theme-desc">
                    <div class="theme-title">
                        <a href="<?php echo esc_url('http://www.inkthemes.com/wp-themes/local-business-wordpress-theme/'); ?>" target="_blank">
                            <?php _e('Local Business Theme', 'infoway'); ?>
                        </a>
                    </div>
                    <br />
                    <?php _e('Local business theme is important for businesses to generate more leads. It captures visitor&#8217;s details so that business owners can convert them into their customers later.   This theme is suitable for all types of local businesses, I would really like to see your leads to grow manifold by using it.', 'infoway'); ?>
                    <br /><br />
                    <?php _e('Single Click Theme Installation. It&#8217;s extremely easy to setup.Lead form guard with anti spam check method. You will get a true list of your customer.Responsive to all kind of Mobile & Tablet devices. 20 Professional designed logo for different niches. (Both PSD and PNG format) You can edit as per your need.50 Professional Images to turn your website to any different niche.You can easily put your contact detail on the top right corner of the page.', 'infoway'); ?>
                    <br /><br />
                    <div class="buy"><a href="<?php echo esc_url('http://www.inkthemes.com/wp-themes/local-business-wordpress-theme/'); ?>" target="_blank">
                            <?php _e('Buy Local business Theme', 'infoway'); ?>
                        </a>
                        &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
                        <a href="<?php echo esc_url('http://wordpress.org/extend/themes/local-business'); ?>" target="_blank">
                            <?php _e('Try Local business for FREE', 'infoway'); ?>
                        </a>
                    </div>
                </div>
            </div>
            <div class="inktheme-themes">
                <div class="theme-image">
                    <a href="<?php echo esc_url('http://www.inkthemes.com/wp-themes/blackbird-responsive-wordpress-theme/'); ?>" target="_blank">
                        <img src="<?php echo $root; ?>/functions/images/blackbird-thumb.png" />
                    </a>
                </div>
                <div class="theme-desc">
                    <div class="theme-title">
                        <a href="<?php echo esc_url('http://www.inkthemes.com/wp-themes/blackbird-responsive-wordpress-theme/'); ?>" target="_blank">
                            <?php _e('Black Bird Theme', 'infoway'); ?>
                        </a>
                    </div>
                    <br/>
                    <?php _e('Blackbird Theme is a very clean and elegantly designed Responsive WordPress Theme. Its created with the aim to make your business website look professional to your visitors. ', 'infoway'); ?>
                    <br/>
                    <br/>
                    <?php _e('Starting from the top header area, the Blackbird WordPress Theme allows you to upload your own Custom Logo and had a space on the top right to enter your contact details. This details are useful for the first time visitors as they can clearly see your contact details right on top.  ', 'infoway'); ?>
                    <br/>
                    <br/>
                    <div class="buy">
                        <a href="<?php echo esc_url('http://www.inkthemes.com/wp-themes/blackbird-responsive-wordpress-theme/'); ?>" target="_blank">
                            <?php _e('Buy Black Bird Theme', 'infoway'); ?>
                        </a>
                        &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
                        <a href="<?php echo esc_url('http://wordpress.org/extend/themes/bizway'); ?>" target="_blank">
                            <?php _e('Try Black Bird Lite for FREE', 'infoway'); ?>
                        </a>
                    </div>
                </div>
                <br />
            </div>
            <div class="inktheme-themes">
                <div class="theme-image">
                    <a href="<?php echo esc_url('http://www.inkthemes.com/wp-themes/andrina-theme/'); ?>" target="_blank">
                        <img src="<?php echo $root; ?>/functions/images/andrina.png" />
                    </a>
                </div>
                <div class="theme-desc">
                    <div class="theme-title">
                        <a href="<?php echo esc_url('http://www.inkthemes.com/wp-themes/andrina-theme/'); ?>" target="_blank">
                            <?php _e('Andrina Theme', 'infoway'); ?>
                        </a>
                    </div>
                    <br />
                    <?php _e('The Andrina Theme allows the user to show his blogposts on the frontpage. Hence the main Home Page is always updated on the release of new blogposts. Hence the site is more Search Engine friendly.', 'infoway'); ?>
                    <br/>
                    <br/>
                    <?php _e('The Theme had a simple layout which attracts the Client to the Website. Also, the professional and Clean design always suites the requirements of almost any kind of business Website. Andrina Theme is very simple to built and you don&#8217;t even need to be a code junkie to start using the Andrina Theme and get your website ready.', 'infoway'); ?>
                    <br /> 
                    <br />
                    <div class="buy">
                        <a href="<?php echo esc_url('http://www.inkthemes.com/wp-themes/andrina-theme/'); ?>" target="_blank">
                            <?php _e('Buy Andrina Theme', 'infoway'); ?>
                        </a>
                        &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
                        <a href="<?php echo esc_url('http://wordpress.org/extend/themes/andrina-lite'); ?>" target="_blank">
                            <?php _e('Try Andrina Lite for FREE', 'infoway'); ?>
                        </a>
                    </div>
                </div>
            </div>
            <div class="inktheme-themes">
                <div class="theme-image">
                    <a href="<?php echo esc_url('http://www.inkthemes.com/wp-themes/figero-wordpress-theme/'); ?>" target="_blank">
                        <img src="<?php echo $root; ?>/functions/images/figero-bigthumbnail.png" />
                    </a>
                </div>
                <div class="theme-desc">
                    <div class="theme-title">
                        <a href="<?php echo esc_url('http://www.inkthemes.com/wp-themes/figero-wordpress-theme/'); ?>" target="_blank">
                            <?php _e('Figero Theme', 'infoway'); ?>
                        </a>
                    </div>
                    <br />
                    <?php _e('Business website designs are best powered by Premium Ecommerce WordPress themes.  WordPress will become a boon if you are developing a website for your business. It will be really powerful and an affordable website design technique.  Building entrepreneurs are especially benefited from the most of this. ', 'infoway'); ?>
                    <br />
                    <br />
                    <?php _e('There are several hundreds and thousands of customizable eCommerce wordpress themes available to download from various websites. Figero is one of the best eCommerce wordpress theme, It&#8217;s easy to use and simple to maintain. If you want to sell your digital items using paypal, It&#8217;s one of the easiest and the quickest way to go online.  Just put your few steps and you are ready to sell your item using paypal.', 'infoway'); ?>
                    <br /> 
                    <br />
                    <div class="buy">
                        <a href="<?php echo esc_url('http://www.inkthemes.com/wp-themes/figero-wordpress-theme/'); ?>" target="_blank">
                            <?php _e('Buy Figero Theme', 'infoway'); ?>
                        </a>
                        &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
                        <a target="_blank" href="<?php echo esc_url('http://wordpress.org/extend/themes/figero'); ?>">
                            <?php _e('Try Figero Lite for FREE', 'infoway'); ?>
                        </a>
                    </div>
                </div>
            </div>
            <div class="inktheme-themes">
                <div class="theme-image">
                    <a href="<?php echo esc_url('http://www.inkthemes.com/wp-themes/poloray-responsive-wordpress-theme/'); ?>" target="_blank">
                        <img src="<?php echo $root; ?>/functions/images/Poloray-thumbe2013.png" />
                    </a>
                </div>
                <div class="theme-desc">
                    <div class="theme-title">
                        <a href="<?php echo esc_url('http://www.inkthemes.com/wp-themes/poloray-responsive-wordpress-theme/'); ?>" target="_blank">
                            <?php _e('Poloray Theme', 'infoway'); ?>
                        </a>
                    </div>
                    <br />
                    <?php _e('Poloray is a unique fully responsive wordpress theme, perfect for creative people and business agencies. By emphasizing your photos and content, it showcases your work in an amazing way. Easy to manage using Themes Options Panel, it comes also with a gallery, blog, Contact Page and other custom page templates to spice up your website.', 'infoway'); ?>
                    <br />
                    <br />
                    <?php _e('Poloray  Theme is a responsive theme and is perfect for quick and easy site with a clean and modern interface and tons of features. The layout does not distract from your content, which is vital for a site devoted to business & blogging. ', 'infoway'); ?>
                    <br />
                    <br />
                    <div class="buy">
                        <a href="<?php echo esc_url('http://www.inkthemes.com/wp-themes/poloray-responsive-wordpress-theme/'); ?>" target="_blank">
                            <?php _e('Buy Poloray Theme', 'infoway'); ?>
                        </a>
                        &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
                        <a href="<?php esc_url('http://wordpress.org/extend/themes/poloray'); ?>" target="_blank">
                            <?php _e('Try Poloray Theme Lite for FREE', 'infoway'); ?>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <?php
}
