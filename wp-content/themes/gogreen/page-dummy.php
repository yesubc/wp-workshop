<?php 
/*
    Template Name: Default
 */
get_header(); ?>
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
    <?php the_post();
        the_title();
        the_content(); ?>
    </div>
</div>
<?php get_footer(); ?>