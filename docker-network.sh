docker network ls

# docker network create --driver namadriver namanetwork
docker network create --driver bridge contohnetwork

docker network rm contohnetwork