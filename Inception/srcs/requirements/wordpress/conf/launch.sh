#!/bin/sh

wp --allow-root --path=/var/www core install --url="halwahed.42.fr" --title="inception" --admin_user=halwahed --admin_password=$WPADPASS --admin_email="halwahed@student.42abudhabi.ae"
wp user create wpuser1 "user1@student.42abudhabi.ae" --role=author --user_pass=$WPUSRDEFPASS --allow-root

wp --allow-root --path=/var/www option update blogname "inception"
wp --allow-root --path=/var/www option update blogdescription "Incpetion Project"
wp --allow-root --path=/var/www option update blog_public 0

wp theme install twentytwentytwo --activate --allow-root #theme

wp plugin install redis-cache --activate --allow-root

wp plugin update --all --allow-root

/usr/sbin/php-fpm8 -F