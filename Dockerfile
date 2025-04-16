# Use PHP Alpine with built-in extensions to avoid manual compilation
FROM php:8.3-fpm-alpine

RUN apk add sqlite-dev libzip-dev  icu-dev mysql-client

# Install PHP extensions using docker-php-ext-install
RUN docker-php-ext-install pdo pdo_sqlite zip intl exif

# Install Composer using a dedicated stage
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html
COPY . /var/www/html

# Install PHP dependencies
RUN composer install --no-interaction --no-dev --optimize-autoloader

# install npm dependencies
RUN apk add npm
RUN npm install
RUN npm run build

RUN chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache \
    && chmod -R 755 /var/www/html/storage \
    && chmod -R 755 /var/www/html/bootstrap/cache

EXPOSE 9000
CMD ["php-fpm"]