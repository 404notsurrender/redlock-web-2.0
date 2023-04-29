# menggunakan image resmi PHP 8.1.x dengan web server NGINX
FROM php:8.1-fpm

# install dependensi yang dibutuhkan
RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# mengaktifkan konfigurasi PHP-FPM
RUN docker-php-ext-enable opcache && \
    docker-php-ext-install pdo_mysql && \
    pecl install xdebug && \
    docker-php-ext-enable xdebug

# mengaktifkan konfigurasi NGINX
RUN rm /etc/nginx/sites-enabled/default
COPY default.conf /etc/nginx/conf.d/

# menyalin aplikasi ke dalam container
COPY /home/sickboy/redlock-web-2.0 /var/www/html/

# mengekspos port 80
EXPOSE 80

# menjalankan NGINX dan PHP-FPM
CMD service nginx start && php-fpm


