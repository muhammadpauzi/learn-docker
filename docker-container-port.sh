docker image pull nginx

# docker container create --name contohnginx --publish newport:containerport nginx:latest
docker container create --name contohnginx --publish 8080:80 nginx:latest