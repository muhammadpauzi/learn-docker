docker volume create mongodata

docker container create --name mongodata --publish 27019:27017 --mount "type=volume,source=mongodata,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=pauzi --env MONGO_INITDB_ROOT_PASSWORD=pauzi mongo:latest