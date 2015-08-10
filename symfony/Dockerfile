FROM jules95/php-apache

RUN apt-get update 

# Install modules
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng12-dev \
        zlib1g-dev \ 
    && docker-php-ext-install gd mcrypt pdo_mysql zip soap mbstring

RUN apt-get clean

RUN rm -fr /etc/apache2/sites-enabled/*

ADD symfony.conf /etc/apache2/sites-available/
ADD run.sh /run.sh

RUN ln -s /etc/apache2/sites-available/symfony.conf /etc/apache2/sites-enabled/symfony.conf

RUN usermod -u 1000 www-data

RUN echo "date.timezone=UTC" >> "/usr/local/etc/php/conf.d/timezone.ini"
RUN echo "zend_extension=opcache.so" >> "/usr/local/etc/php/conf.d/opcache.ini"

RUN chmod +x /run.sh

EXPOSE 80

CMD ["/run.sh"]
CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
