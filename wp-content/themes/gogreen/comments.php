<?php  

    $comment_args = array( 'title_reply'=>'Leave a comment',

        'fields' => apply_filters( 'comment_form_default_fields', array(

            'author' => '<input type="text" class="user" name="author" id="author" value="' . esc_attr( $commenter['comment_author'] ) . '" placeholder="Your Name"' . $aria_req . '>',

            'email'  => '<input type="email" name="email" id="email" value="' . esc_attr(  $commenter['comment_author_email'] ) . '" placeholder="Your Email"' . $aria_req . '>',

            'url'    => '' ) 
        ),

        'comment_field' => '<textarea name="comment" id="comment" class="message" placeholder="Your Message"></textarea>',

        'comment_notes_after' => '',

        'label_submit' => 'Add a comment',
        'comment_notes_before' => '',

        );
	wp_list_comments();
	comment_form( $comment_args );
?>