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
### with docker compose, project name, service name
docker compose -p dbpoe-app exec -it db mysqldump -u poe -ppassword -c -t -N  --skip-quote-names --skip-opt post_suivi_stagiaire trainee > data-trainee.sql

### with docker and container id or global name
docker exec -it  dbpoe-app-db-1 mysqldump -u poe -ppassword -c -t -N  --skip-quote-names --skip-opt post_suivi_stagiaire trainee > data-trainee.sql

## Play SQL script
- with CMD DOS:

docker compose -p dbpoe-app exec -T db mysql -u poe -ppassword post_suivi_stagiaire < sql\data-poe.sql

- with powershell:

Get-Content .\sql\data-poe.sql | docker compose -p dbpoe-app exec -T db mysql -u poe -ppassword post_suivi_stagiaire
