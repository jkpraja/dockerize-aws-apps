#!/bin/sh

docker compose down -v
docker compose up -d --build
#sleep 2

#docker container exec -ti ubuntu-pesbuk-db-1 sh
#mysql -uroot -padminadmin1 dbsosmed < ./docker-entrypoint-initdb.d/dump.sql
