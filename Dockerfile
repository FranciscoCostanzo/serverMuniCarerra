# Usa la imagen base oficial de PHP con Apache
FROM php:8.1-apache

# Instala extensiones de PHP necesarias
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copia el contenido de tu proyecto a la carpeta raíz del contenedor
COPY . /var/www/html/

# Da permisos adecuados a los archivos
RUN chown -R www-data:www-data /var/www/html/

# Expone el puerto 80
EXPOSE 80
