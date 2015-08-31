<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'mytheme');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '9m($T6r`83LB!$)KK7>m*|bk=(c|i+&Z23]9I{@)W0Np:|9nyXi%+<{1R}k&s5?T');
define('SECURE_AUTH_KEY',  'gc3rw(w@ZM-t)HQPl?MscEv6#9hmZK~+jUY4JT5K~@xP9^X`5b78/;rekGh6GZ^J');
define('LOGGED_IN_KEY',    ']/HdI#_(nk;NoSRHh{)]0[nVgO8PO`Y*M(Vk:--m[S 5m kW2:OBd(XbtD|HRAZr');
define('NONCE_KEY',        'TXg-(+/uSV-2;-p9esytOx}N|6M$J*/%+&A#WdLnY%0KVZ~WVb6bHI*+i|r_L&N*');
define('AUTH_SALT',        ',*fuRH+omXT#=-@Pdv@X8KbkQ4n:xca(3{Uu;J,Tq-,40><|,BP/IR_Ro{d=!Aby');
define('SECURE_AUTH_SALT', 'Pu|?5ems4R#|W$ShZSHmdR@A.]es$yrf|-uxfyiS8`WoH?eXH[|^|ho1Y$D*S}g,');
define('LOGGED_IN_SALT',   'wNZ2U:3`mTS<fX&Y~?-uY0_^|7YSz*T|=uD&8U+MeKwWH-n|X4.e`m+=zLpw!sVc');
define('NONCE_SALT',       'r7/r!cY`rgl8o^YHn(vJN+9jQ+}-sjy4Kx-_xL3eVpu&RWo~xef&zV19OVQ~]G+$');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'mytheme_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
