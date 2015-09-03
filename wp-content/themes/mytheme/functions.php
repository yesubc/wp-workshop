<?php
function mytheme_script_enqueue() {
    wp_enqueue_style('customstyle', get_template_directory_uri() . '/assets/css/mytheme.css',array(),'1.0.0','all');
}

add_action('wp_enqueue_scripts','mytheme_script_enqueue');

// Remove Generator
remove_action('wp_head', 'wp_generator');