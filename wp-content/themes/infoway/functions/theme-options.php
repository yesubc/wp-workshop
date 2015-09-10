<?php

add_action('init', 'infoway_options');
if (!function_exists('infoway_options')) {

    function infoway_options() {
        // VARIABLES
        $themename = "InfoWay";
        $shortname = "of";
        // Populate OptionsFramework option in array for use in theme
        global $infoway_options;
        $infoway_options = infoway_get_option('infoway_options');
        // Background Defaults
        $background_defaults = array('color' => '', 'image' => '', 'repeat' => 'repeat', 'position' => 'top center', 'attachment' => 'scroll');
        //Stylesheet Reader
        $captcha_option = array("on" => __("On", 'infoway'), "off" => __("Off", 'infoway'));
        // Pull all the categories into an array
        $options_categories = array();
        $options_categories_obj = get_categories();
        foreach ($options_categories_obj as $category) {
            $options_categories[$category->cat_ID] = $category->cat_name;
        }
        // Pull all the pages into an array
        $options_pages = array();
        $options_pages_obj = get_pages('sort_column=post_parent,menu_order');
        $options_pages[''] = __('Select a page:', 'infoway');
        foreach ($options_pages_obj as $page) {
            $options_pages[$page->ID] = $page->post_title;
        }
        // If using image radio buttons, define a directory path
        $imagepath = get_stylesheet_directory_uri() . '/images/';

        $options = array(
            array("name" => __("General Settings", 'infoway'),
                "type" => "heading"),
            array("name" => __("Custom Logo", 'infoway'),
                "desc" => __("Choose your own logo. Optimal Size: 300px Wide by 90px Height.", 'infoway'),
                "id" => "infoway_logo",
                "type" => "upload"),
            array("name" => __("Custom Favicon", 'infoway'),
                "desc" => __("Specify a 16px x 16px image that will represent your website's favicon.", 'infoway'),
                "id" => "infoway_favicon",
                "type" => "upload"),
            array("name" => __("Body Background Image", 'infoway'),
                "desc" => __("Select image to change your website background", 'infoway'),
                "id" => "infoway_bodybg",
                "std" => "",
                "type" => "upload"),
            array("name" => __("Top Right Contact Details", 'infoway'),
                "desc" => __("Enter your contact detail/number to display it at the top right corner.", 'infoway'),
                "id" => "infoway_topright",
                "std" => "",
                "type" => "textarea"),
            array("name" => __("Contact No.", 'infoway'),
                "desc" => __("Enter your contact number on which you want to receive call's 
			(Feature active only when site is viewed on moblie devices).
			example: +91-1800-548-783", 'infoway'),
                "id" => "infoway_contact_number",
                "std" => "",
                "type" => "text"),
            //front Page Topinfo Bar  Setting		
            array("name" => __("Top Infobar Settings", 'infoway'),
                "type" => "heading"),
            array("name" => __("Top Infobar Text", 'infoway'),
                "desc" => __("Enter your Text", 'infoway'),
                "id" => "infoway_topinfobar_text",
                "std" => "",
                "type" => "textarea"),
            array("name" => __("Top Infobar button text", 'infoway'),
                "desc" => __("Enter your sitename", 'infoway'),
                "id" => "infoway_topinfobar_sitename",
                "std" => "",
                "type" => "text"),
            array("name" => __("Top Infobar Button Click Url", 'infoway'),
                "desc" => __("Enter your siteurl", 'infoway'),
                "id" => "infoway_topinfobar_url",
                "std" => "",
                "type" => "text"),
            array("name" => __("Home page Image Section Starts From Here.", 'infoway'),
                "type" => "saperate",
                "class" => "saperator"),
            array("name" => __("Upload Home Page Image", 'infoway'),
                "desc" => __("Choose Image for Top feature Area. Optimal size is 950px wide and 363px height.", 'infoway'),
                "id" => "infoway_slideimage1",
                "std" => "",
                "type" => "upload"),
            array("name" => __("Home Page Image Link", 'infoway'),
                "desc" => __("Enter yout link url for Home page image", 'infoway'),
                "id" => "infoway_slidelink1",
                "std" => "",
                "type" => "text"),
            //Homepage Feature Area
            array("name" => __("Feature Settings", 'infoway'),
                "type" => "heading"),
            array("name" => __("Feature Page Heading", 'infoway'),
                "desc" => __("Enter your text for Feature page heading. (just below the slider section)", 'infoway'),
                "id" => "infoway_main_heading",
                "std" => "",
                "type" => "textarea"),
            array("name" => __("Front Page Feature Section Starts From Here.", 'infoway'),
                "type" => "saperate",
                "class" => "saperator"),
            //Left Feature Area
            array("name" => __("First Feature Heading", 'infoway'),
                "desc" => __("Enter your text for first col heading.", 'infoway'),
                "id" => "infoway_firsthead",
                "std" => "",
                "type" => "text"),
            array("name" => __("First Feature Description", 'infoway'),
                "desc" => __("Enter your text description.", 'infoway'),
                "id" => "infoway_firstdesc",
                "std" => "",
                "type" => "textarea"),
            array("name" => __("First Feature Link URL", 'infoway'),
                "desc" => __("Enter your link url for first feature section.", 'infoway'),
                "id" => "infoway_link1",
                "std" => "",
                "type" => "text"),
            //Second Feature Separetor
            array("name" => __("Second Feature Heading", 'infoway'),
                "desc" => __("Enter your text for second Feature heading.", 'infoway'),
                "id" => "infoway_secondhead",
                "std" => "",
                "type" => "text"),
            array("name" => __("Second Feature Description", 'infoway'),
                "desc" => __("Enter your text for second Feature description.", 'infoway'),
                "id" => "infoway_seconddesc",
                "std" => "",
                "type" => "textarea"),
            array("name" => __("Second Feature Link URL", 'infoway'),
                "desc" => __("Enter your link url for Second feature section.", 'infoway'),
                "id" => "infoway_link2",
                "std" => "",
                "type" => "text"),
            //Third Feature Separetor
            array("name" => __("Third Feature Heading", 'infoway'),
                "desc" => __("Enter your text for Third Feature heading.", 'infoway'),
                "id" => "infoway_thirdhead",
                "std" => "",
                "type" => "text"),
            array("name" => __("Third Feature Description", 'infoway'),
                "desc" => __("Enter your text for Third Feature description.", 'infoway'),
                "id" => "infoway_thirddesc",
                "std" => "",
                "type" => "textarea"),
            array("name" => __("Third Feature Link URL", 'infoway'),
                "desc" => __("Enter your link url for fourth Feature section.", 'infoway'),
                "id" => "infoway_link3",
                "std" => "",
                "type" => "text"),
            array("name" => __("Bottom Feature Start From Here.", 'infoway'),
                "type" => "saperate",
                "class" => "saperator"),
            array("name" => __("Testimonial Heading", 'infoway'),
                "desc" => __("Enter your text Testimonial Heading.", 'infoway'),
                "id" => "infoway_testimonial_head",
                "std" => "",
                "type" => "textarea"),
            array("name" => __("Testimonial Description", 'infoway'),
                "desc" => __("Enter your text Testimonial Description.", 'infoway'),
                "id" => "infoway_testimonial_desc",
                "std" => "",
                "type" => "textarea"),
//****=============================================================================****//
//****-----------This code is used for creating color styleshteet options----------****//							
//****=============================================================================****//				
            array("name" => __("Styling Options", 'infoway'),
                "type" => "heading"),
            array("name" => __("Custom CSS", 'infoway'),
                "desc" => __("Quickly add some CSS to your theme by adding it to this block.", 'infoway'),
                "id" => "infoway_customcss",
                "std" => "",
                "type" => "textarea"));

        infoway_update_option('of_template', $options);
        infoway_update_option('of_themename', $themename);
        infoway_update_option('of_shortname', $shortname);
    }

}
?>
        