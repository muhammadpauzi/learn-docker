docker network create --driver bridge mongonetwork

docker container create --name mongodb --network mongonetwork --env MONGO_INITDB_ROOT_USERNAME=pauzi --env MONGO_INITDB_ROOT_PASSWORD=pauzi mongo

docker image pull mongo-express:latest

docker container create --name mongodbexpress --publish 8081:8081 --network mongonetwork --env ME_CONFIG_MONGODB_URL="mongodb://pauzi:pauzi@mongodb:27017" mongo-express:latest

docker container start mongodb
docker container start mongodbexpress

# docker network disconnect networkname containername
docker network disconnect mongonetwork mongodb
docker network connect mongonetwork mongodb