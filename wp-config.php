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
define('DB_NAME', 'magic');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

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
define('AUTH_KEY',         '&gmkKQM+x%/:ZZ65&3~f6:Gtaq.Sd(Y4UmdEjh1}%d_| VjZnNt^X564U;7|g;gz');
define('SECURE_AUTH_KEY',  '`|,[6.zo*u+W]#Lq#*%&b>znD5)*3TU/,|IS,j:>G-&|6zKz8nPaBMiQX,i~9VxN');
define('LOGGED_IN_KEY',    'se=Vt{>hd6(3{47mMT#sgH^mRG+AGxDEx=??ZztKiew{T:0G D/v16s<NH3gYj!v');
define('NONCE_KEY',        'hw/wxclF6%6~`o%jwI[yQ@bGN$x6xfJEG@>^:PF9pcL?03~cdRH?COjOVpjf/~]0');
define('AUTH_SALT',        'am]mAHx-/3(S` I|.!hBlBDFHj5rtsO!Hwx/u1 Awg^+ccbK2)9<2_ycE=}EdU:3');
define('SECURE_AUTH_SALT', 'eF/Jj#V!i-:PVZvJ*`J>^<ot>2%fb-.PSs(2}e<Lw_p>wp39PXAP66PcBmyx{?a`');
define('LOGGED_IN_SALT',   '/A-eegK1.5&f/[r|:z5+L`{6Zh7(vs[GqY+C-moIgdqP/zz~Hr8>nYBoWzqo<c&h');
define('NONCE_SALT',       '6.;7u/For>G*#YiJRU.xvbrEG H!>tzX_}m@1v_<o5|>}2Dt{r[&HcAfJS]l( NV');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_365';

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
