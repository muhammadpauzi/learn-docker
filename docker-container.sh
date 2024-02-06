# all
docker container ls -a
# running only
docker container ls

docker container create --name contoh-redis redis:latest

docker container start containerid
# or
docker container start containername

docker container stop containerid
# or
docker container stop containername

docker container rm containerid
# or
docker container rm containername