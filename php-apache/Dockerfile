FROM php:5.6.8-apache

RUN curl -sL https://deb.nodesource.com/setup | bash -

RUN apt-get update && apt-get install -y vim git php5-cli php5-curl php5-mysql wget nodejs zsh phpunit mysql-client php5-xdebug libxml2-dev

# Install Postfix.
RUN echo "postfix postfix/main_mailer_type string Internet site" > preseed.txt
RUN echo "postfix postfix/mailname string mail.example.com" >> preseed.txt

# Use Mailbox format.
RUN debconf-set-selections preseed.txt
RUN DEBIAN_FRONTEND=noninteractive apt-get install -q -y postfix && apt-get clean

RUN npm install gulp -g

RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/sbin/composer

RUN git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh && cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

RUN wget http://get.sensiolabs.org/php-cs-fixer.phar -O php-cs-fixer && chmod a+x php-cs-fixer && mv php-cs-fixer /usr/local/bin/php-cs-fixer

RUN a2enmod rewrite

ADD .gitconfig /root/.gitconfig
ADD .zshrc /root/.zshrc
ADD .bashrc /root/.bashrc
