#!/bin/sh

# Set correct permissions
# chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache
# chmod -R 755 /var/www/html/storage /var/www/html/bootstrap/cache

# Start Nginx
nginx -g 'daemon off;'