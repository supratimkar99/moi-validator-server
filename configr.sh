#!/bin/bash

echo "Node Password: $ARG1"
echo "Current user: $(whoami)"
echo "Configr command"

# # cd ./moi
# ls -l
# echo "updating below krama id"
# ls ./moi/log
# docker ps -a
# echo "Stopping all Docker containers..."
# docker stop $(docker ps -a -q)
# echo "Pruning Docker system..."
# docker system prune -a -f
# echo "Removing logs in ./moi/log/..."
# rm -rf ./moi/log/*
# sudo sysctl -w net.core.rmem_max=26214400
# sudo sysctl -w net.core.wmem_max=26214400
# cd ./moi
# ls -l
# rm -rf db
# rm -rf genesis.json
# echo "genesis file removed"
# rm -rf babylon-latest-snap.tar.xz 
# echo "db folder removed"
# ls -l
# wget https://moichain-pub.s3.amazonaws.com/genesis.json
# echo "Adding a delay of 5 seconds"
# sleep 5  # Adding a delay of 5 seconds
# wget https://babylon-snapshot.moi.technology/babylon-latest-snap.tar.xz && tar -xvJf babylon-latest-snap.tar.xz
# echo "Adding a delay of 20 seconds"
# cd ./db
# ls -l
# cd ..
# cd ..
# echo "folder changed to root"
# ls -l

# echo "sudo docker run --network host -it -d -w /data -v $(pwd):/data sarvalabs/moipod:latest server --data-dir moi --log-level DEBUG --config-path moi/config.json --node-password $ARG1"
# sudo docker run --network host -it -d -w /data -v $(pwd):/data sarvalabs/moipod:latest server --data-dir moi --log-level DEBUG --config-path moi/config.json --node-password $ARG1
# sleep 5
# docker ps -a
# # Get the container IDs of all containers
# container_ids=$(docker ps -a -q)

# # Loop through each container ID and get its status
# for container_id in $container_ids; do
#     # Use docker inspect to get the status of the container
#     status=$(docker inspect --format='{{.State.Status}}' $container_id)
#     echo "Container $container_id CONFIRMATION_STATUS: $status"
# done