docker image pull nginx:latest

# -i, --interactive                    Keep STDIN open even if not attache
# -t, --tty                            Allocate a pseudo-TTY
# --rm                                 Automatically remove the container when it exits
# -d, --detach                         Run container in background and print container ID
# -p, --publish list                   Publish a container's port(s) to the host
docker run -it --rm -d -p 8080:80 --name web nginx

docker container ls

docker container exec -it web /bin/bash
# check /usr/share/nginx/html

# -v, --volume list                    Bind mount a volume
docker run -it --rm -d -p 8080:80 --name web -v ~/devs/learn-docker/nginx-mount:/usr/share/nginx/html nginx
