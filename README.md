## BACKEND
composer install

cp .env.example .env

php artisan key:generate

php artisan migrate

php artisan passport:install

php artisan serve
## FRONTEND
npm i

npm start
