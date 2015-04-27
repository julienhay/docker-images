FROM php:5.6.8-apache

RUN apt-get update && apt-get install -y vim git php5-cli php5-curl

RUN curl -sL https://deb.nodesource.com/setup | bash -

RUN apt-get install -y nodejs

RUN apt-get clean

RUN npm install gulp -g

RUN curl -sS https://getcomposer.org/installer | php

RUN mv composer.phar /usr/sbin/composer

ADD .gitconfig /root/.gitconfig

ADD .bashrc /root/.bashrc

