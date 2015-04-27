**Docker symfony image**

- Create file docker-compose.yml

```
application:
    image: jules95/symfony
    volumes:
        - symfony:/var/www/html
        - logs/apache2:/var/logs/apache2
    links:
       - db
    ports:
       - 80:80
db:
    image: mysql
    ports:
        - 3306:3306
    environment:
        MYSQL_ROOT_PASSWORD: root
        MYSQL_DATABASE: symfony
        MYSQL_USER: root
        MYSQL_PASSWORD: root
```

- Create folder symfony
- Checkout project into symfony/
- `docker-compose up -d`
