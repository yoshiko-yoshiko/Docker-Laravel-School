#!/bin/sh
mkdir app
mkdir front_app
mkdir -p db/mysql
docker-compose up -d --build
docker-compose exec app composer create-project laravel/laravel . "5.1"
docker-compose exec app chmod -R 777 storage