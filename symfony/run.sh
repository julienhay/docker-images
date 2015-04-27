#!/bin/sh

rm -fr /var/www/html/app/cache/*
rm -fr /var/www/html/app/logs/*

chmod -R 777 /var/www/html/app/cache/ /var/www/html/app/logs/

