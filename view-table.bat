echo off
rem delete-data-table <table-name>
set tablename=%1
docker compose -p dbpoe-app exec -it db mysql -u poe -ppassword post_suivi_stagiaire -e "select * from %tablename%"