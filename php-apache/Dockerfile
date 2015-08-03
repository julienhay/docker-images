FROM php:5.6.8-apache

RUN curl -sL https://deb.nodesource.com/setup | bash -

RUN apt-get update && apt-get install -y vim git php5-cli php5-curl php5-mysql wget nodejs zsh phpunit mysql-client php5-xdebug && apt-get clean

RUN npm install gulp -g

RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/sbin/composer

RUN git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh && cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

RUN wget http://get.sensiolabs.org/php-cs-fixer.phar -O php-cs-fixer && chmod a+x php-cs-fixer && mv php-cs-fixer /usr/local/bin/php-cs-fixer

ADD .gitconfig /root/.gitconfig
ADD .zshrc /root/.zshrc
ADD .bashrc /root/.bashrc
