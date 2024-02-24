# CORE-Php

## Init

- Correr doocker

  docker-compose up -d --build

  docker-compose up -d

  localhost:8080
  
  localhost:8000 (laravel apps)

### Laravel

- Laravel project

  - Opt 1

    Agregar servicio a docker-compose con imagen laravel

  ```yml
    app01:
      image: docker.io/bitnami/laravel:10
      ports:
        - '8000:8000'
      environment:
        - DB_HOST=mariadb
        - DB_PORT=3306
        - DB_USERNAME=root
        - DB_DATABASE=laravel_e1
      volumes:
        - './app01:/app'
      depends_on:
        - mariadb
      networks:
        - mynetwork
  ```

  - Opt 2

    exec container

    git clone <https://github.com/laravel/laravel.git> example-app

    cd example-app

    composer install (si falla la creacion de un proyecto o la instalacion de un existente)

  - Opt 3

    exec container

    composer create-project laravel/laravel example-app

    cd example-app

    composer install (si falla la creacion de un proyecto o la instalacion de un existente)
