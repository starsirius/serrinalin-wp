#!/bin/bash

# Exit immediately if a pipeline returns a non-zero status.
set -e

WP_CONF_PATH="config/nginx/wordpress"
NGINX_CONF_PATH="config/nginx/nginx.conf"

php "$WP_CONF_PATH.php" > $WP_CONF_PATH
nginx -c "$PWD/$NGINX_CONF_PATH" -g 'daemon off; error_log /dev/stderr warn;'
