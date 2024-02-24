FROM php:8.2-apache

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# # Install PHP extensions
# RUN docker-php-ext-install mbstring exif pcntl bcmath gd

# Instalar módulo mysqli
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install pdo pdo_mysql

# Instalar Composer
ENV COMPOSER_ALLOW_SUPERUSER=1

# Get latest Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# # Instalar Composer globalmente
# RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Habilitar el módulo headers en Apache
RUN a2enmod headers

# Copiar la configuración personalizada de PHP (opcional)
# COPY php.ini /usr/local/etc/php/conf.d/

# Configurar Apache para permitir la reescritura de URL (opcional)
RUN a2enmod rewrite
# RUN service apache2 restart

# Establecer el directorio de trabajo
WORKDIR /var/www/html

# # Clonar Laravel
# RUN composer create-project --prefer-dist laravel/laravel .

# Dar permisos adecuados para Laravel
# RUN chown -R www-data:www-data /var/www/html/storage
# RUN chown -R www-data:www-data /var/www/html/bootstrap/cache

RUN composer config -g repo.packagist composer https://packagist.org

# Exponer el puerto
EXPOSE 80

# Iniciar Apache en primer plano
CMD ["apache2-foreground"]



