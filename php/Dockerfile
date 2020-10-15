ARG PHP_VERSION=""
FROM php:${PHP_VERSION:+${PHP_VERSION}-}fpm

# Download script to install PHP extensions and dependencies
ADD https://raw.githubusercontent.com/mlocati/docker-php-extension-installer/master/install-php-extensions /usr/local/bin/

RUN chmod uga+x /usr/local/bin/install-php-extensions && sync

RUN DEBIAN_FRONTEND=noninteractive apt-get update -q \
    && DEBIAN_FRONTEND=noninteractive apt-get install -qq -y \
      curl git zip unzip software-properties-common vim wget \
    && install-php-extensions \
      bcmath bz2 calendar exif gd intl ldap \
      mysqli pdo_mysql soap xsl zip sockets 
    #   memcached \
    #   opcache \
    #   pdo_pgsql \
    #   pgsql \
    #   redis \
    #   pdo_sqlsrv \
    #   sqlsrv 

# Update image
RUN apt-get update && apt-get install -y

# Install xDebug
RUN pecl install xdebug-2.9.6

# Add php.ini
ADD ./custom_php.ini /usr/local/etc/php/php.ini

# Install Composer
RUN wget https://getcomposer.org/installer -O - -q \
    | php -- --install-dir=/bin --filename=composer --quiet