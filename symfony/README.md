**Docker symfony image**

- Create file docker-compose.yml

```
application:
    image: jules95/symfony
    volumes:
        - .:/var/www/html
    links:
       - db
    ports:
       - 80:80
    environment:
       SYMFONY_ENV: dev
    volumes_from:
       - data
data:
  image: busybox
  volumes:
    - /var/lib/mysql
    - /var/www/html/app/cache
    - /var/www/html/app/logs
db:
    image: mysql
    ports:
        - 3306:3306
    volumes_from:
      - data
    environment:
        MYSQL_ROOT_PASSWORD: root
        MYSQL_DATABASE: symfony
        MYSQL_USER: root
        MYSQL_PASSWORD: root
```

- Create folder symfony
- Checkout project into symfony/
- `docker-compose up -d`
- Enter in the container : `docker exec -it CONTAINER_NAME zsh`
