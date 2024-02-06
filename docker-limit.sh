docker container create --name smallnginx -p 8081:80 --memory 100m --cpus 0.5 nginx:latest


# CONTAINER ID   NAME         CPU %     MEM USAGE / LIMIT   MEM %     NET I/O       BLOCK I/O     PIDS
# ed604f1ff875   smallnginx   0.00%     9.945MiB / 100MiB   9.95%     5.82kB / 0B   0B / 12.3kB   13