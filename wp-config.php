<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'majid' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         ': bi+jEMn4WXY43vk?-C`Q(6D0#ZK!9B%V#X?&-6TBcLxV=p-|gEDDn({],N=V1q' );
define( 'SECURE_AUTH_KEY',  '6&<#B15-<wBi|eXERazq<]Gh/-j&Qw0zsRZ9+X(_{*hfXl#)}4?ov:x6[__Th=)I' );
define( 'LOGGED_IN_KEY',    'QRY|lyc]z}Vd=eZu:j{lG5RR0:5%gu$Lb!)~_Ja4%+V_ZsiTz=Z;z5>ops`2glF/' );
define( 'NONCE_KEY',        'F k]5ZR@TmMT(kLIL%Psf^:_7Y!EQ!Fc%<OJm]S~E6^LPJubo/tTt?k@&MI:_vXR' );
define( 'AUTH_SALT',        '5e.$qs8Qr--<ZqN%/M]H#E`+k Iyt22XqbVkZ)~vb>22Wt{&vqnZEN`[]P7 !AMR' );
define( 'SECURE_AUTH_SALT', '*= !m@[C2:n4<vw/kr1A.G<=7wW#}Mx0_=V%mAT/b~W2r2lT$@.N*9&O!a}nFFH ' );
define( 'LOGGED_IN_SALT',   'tk/(G8P{fPzJ!<!!HL.)DE4UI{Q>1*ac^T/,/P (A00+!QVb=}i[O~0qs]OYQ4aG' );
define( 'NONCE_SALT',       '5CXW:zLzwO`H(vmX2WJ(6m9#.$>0,k4Q!MY#kFq*Ix0Ny)2YE?!3.7P6X$O]y$dC' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
