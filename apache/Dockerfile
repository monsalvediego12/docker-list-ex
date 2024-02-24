FROM php:7.4-apache

# Instalar módulo mysqli
RUN docker-php-ext-install mysqli

# Copiar la configuración personalizada de PHP (opcional)
# COPY php.ini /usr/local/etc/php/conf.d/

# Configurar Apache para permitir la reescritura de URL (opcional)
# RUN a2enmod rewrite
# RUN service apache2 restart

# Exponer el puerto
EXPOSE 80

# Establecer el directorio de trabajo
WORKDIR /var/www/html
