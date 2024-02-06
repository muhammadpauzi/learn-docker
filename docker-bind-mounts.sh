docker image pull mongo:latest

docker container create --name mongodata --publish 27018:27017 --mount "type=bind,source=/home/mhdpauzi/devs/learn-docker/mongo-data,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=pauzi --env MONGO_INITDB_ROOT_PASSWORD=pauzi mongo:latest