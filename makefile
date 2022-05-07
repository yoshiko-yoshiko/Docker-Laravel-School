# docker-composeコマンド
up:
	docker-compose up -d
build:
	docker-compose up -d --build
down:
	docker-compose down
restart:
	docker-compose down
	docker-compose up -d --build
# laravel環境構築
laravel:
	mkdir app
	mkdir -p db/mysql
	docker-compose up -d --build
	docker-compose exec app composer create-project laravel/laravel . "5.1"
	docker-compose exec app chmod -R 777 storage
#migrate (DB処理など)
app:
	docker compose exec app bash
migrate:
	docker compose exec app php artisan migrate
fresh:
	docker compose exec app php artisan migrate:fresh --seed
seed:
	docker compose exec app php artisan db:seed