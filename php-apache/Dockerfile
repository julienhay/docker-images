FROM php:5.6.8-apache

RUN curl -sL https://deb.nodesource.com/setup | bash -

RUN apt-get update && apt-get install -y vim git php5-cli wget nodejs zsh && apt-get clean

RUN npm install gulp -g

RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/sbin/composer

RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

ADD .gitconfig /root/.gitconfig
ADD .zshrc /root/.zshrc
ADD .bashrc /root/.bashrc
