#!/bin/sh
docker-compose exec php-server bash -c "cd /srv && \
php composer.phar dump-autoload && \
php artisan clear-compiled && \
php artisan optimize && \
php artisan cache:clear && \
php artisan config:clear && \
php artisan config:cache &&\
rm -rf bootstrap/cache/config.php"