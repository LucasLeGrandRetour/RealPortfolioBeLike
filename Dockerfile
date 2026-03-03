FROM php:8.2-apache

# Activer le module de réécriture d'URL d'Apache (souvent utile)
RUN a2enmod rewrite

# Copier tout le contenu de ton dossier actuel dans le dossier racine du serveur web
COPY . /var/www/html/

# Assurer que les permissions sont correctes
RUN chown -R www-data:www-data /var/www/html/ \
    && chmod -R 755 /var/www/html/
