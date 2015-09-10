<?php

/* ----------------------------------------------------------------------------------- */
/* Head Hook */
/* ----------------------------------------------------------------------------------- */

function infoway_head() {
    do_action('of_head');
}

/* ----------------------------------------------------------------------------------- */
/* Add default options after activation */
/* ----------------------------------------------------------------------------------- */
if (is_admin() && isset($_GET['activated']) && $pagenow == "themes.php") {
    //Call action that sets
    add_action('after_switch_theme', 'infoway_option_setup');
}

function infoway_option_setup() {
    //Update EMPTY options
    $of_array = array();
    add_option('infoway_options', $of_array);
    $template = infoway_get_option('of_template');
    $saved_options = infoway_get_option('infoway_options');
    $std = '';
    foreach ($template as $option) {
        if ($option['type'] != 'heading') {
            if (isset($option['id'])) {
                $id = $option['id'];
            }
            if (isset($option['std'])) {
                $std = $option['std'];
            }
            $db_option = infoway_get_option($id);
            if (empty($db_option)) {
                if (is_array($option['type'])) {
                    foreach ($option['type'] as $child) {
                        $c_id = $child['id'];
                        $c_std = $child['std'];
                        infoway_update_option($c_id, $c_std);
                        $of_array[$c_id] = $c_std;
                    }
                } else {
                    infoway_update_option($id, $std);
                    $of_array[$id] = $std;
                }
            } else { //So just store the old values over again.
                $of_array[$id] = $db_option;
            }
        }
    }
    infoway_update_option('infoway_options', $of_array);
}

?>
