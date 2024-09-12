# Use the official PHP image with Apache
FROM php:8.2-apache

# Enable Apache mod_rewrite module
RUN a2enmod rewrite

# Install additional PHP extensions if needed
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install pdo pdo_mysql gd

# Copy custom Apache configuration
COPY apache.conf /etc/apache2/sites-available/000-default.conf

# Copy custom PHP configuration
COPY php.ini /usr/local/etc/php/php.ini

# Set the working directory
WORKDIR /var/www/html

# Copy the current directory contents into the container at /var/www/html
COPY . /var/www/html

# Expose port 80
EXPOSE 80
