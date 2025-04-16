#!/bin/sh

# Set correct permissions
chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache
chmod -R 755 /var/www/html/storage /var/www/html/bootstrap/cache
composer install --no-dev --optimize-autoloader --no-interaction
npm install --production --no-audit --no-fund
php artisan key:generate --no-interaction
php artisan opcache:clear --no-interaction
php artisan config:cache --no-interaction
php artisan route:cache --no-interaction
php artisan view:cache --no-interaction
php artisan storage:link --no-interaction
php artisan migrate --force --no-interaction

# Start PHP-FPM (this replaces the script process)
exec php-fpm