# docker-mysql8-phpmyadmin
Dockerized MySQL8 / PHPMyAdmin

## Clone the project
`git clone https://github.com/dacodemaniak/docker-mysql8-phpmyadmin`

## Move to the project folder
`cd docker-mysql8-phpmyadmin`

## Run the container
`docker compose -p dbpoe-app up -d`

`docker compose --env-file .env-testu -p dbpoe-testu up -d`

## Dump table
docker compose -p dbpoe-app exec -it db mysqldump -u poe -c -ppassword -N -t -y --skip-opt --skip-comments --skip-quote-names  post_suivi_stagiaire trainee > data-trainee.sql

docker exec -it  dbpoe-app-db-1 mysqldump -u poe -c -ppassword -N -t -y --skip-opt --skip-comments --skip-quote-names  post_suivi_stagiaire trainee > data-trainee.sql