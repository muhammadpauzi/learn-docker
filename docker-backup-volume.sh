docker container create --name nginxbackup --mount "type=bind,source=/home/mhdpauzi/devs/learn-docker/nginx-backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" nginx:latest

docker container start nginxbackup

docker container exec -i -t nginxbackup /bin/bash