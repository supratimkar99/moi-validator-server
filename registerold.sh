#!/bin/bash

echo "mnemonic password: $ARG2"
echo "Wallet Address: $ARG4"
echo "Node Index: $ARG5"
echo "Full IP: $ARG6"
echo "Current user: $(whoami)"
echo "Register new machine Script"



# ls -l
# curl -fsSL https://get.docker.com -o get-docker.sh
# sudo sh get-docker.sh
# sudo systemctl start docker
# sudo systemctl enable docker
# sudo systemctl status docker
# mkdir moi

# # ls -l
# # echo "updating below krama id"
# # ls ./moi/log
# # docker ps -a
# # echo "Stopping all Docker containers..."
# # docker stop $(docker ps -a -q)
# # echo "Pruning Docker system..."
# # docker system prune -a -f
# # echo "Removing logs in ./moi/log/..."
# # rm -rf ./moi/log/*


# # docker pull sarvalabs/moipod:latest
# # sudo sysctl -w net.core.rmem_max=26214400
# # sudo sysctl -w net.core.wmem_max=26214400
# # sudo docker run --network host --rm -it -w /data -v $(pwd):/data sarvalabs/moipod:latest register --data-dir moi --mnemonic-keystore-path ./keystore.json --mnemonic-keystore-password $ARG2 --watchdog-url https://babylon-watchdog.moi.technology/add --node-password $ARG2 --network-rpc-url https://voyage-rpc.moi.technology/babylon --wallet-address $ARG4 --node-index $ARG5 --local-rpc-url $ARG6
# docker pull sarvalabs/moipod:latest
# sudo sysctl -w net.core.rmem_max=26214400
# sudo sysctl -w net.core.wmem_max=26214400
# echo "sudo docker run --network host --rm -w /data -v $(pwd):/data sarvalabs/moipod:latest register --data-dir moi --mnemonic-keystore-path ./keystore.json --mnemonic-keystore-password $ARG2 --watchdog-url https://babylon-watchdog.moi.technology/add --node-password $ARG2 --network-rpc-url https://voyage-rpc.moi.technology/babylon --wallet-address $ARG4 --node-index $ARG5 --local-rpc-url $ARG6"
# sudo docker run --network host --rm -w /data -v $(pwd):/data sarvalabs/moipod:latest register --data-dir moi --mnemonic-keystore-path ./keystore.json --mnemonic-keystore-password $ARG2 --watchdog-url https://babylon-watchdog.moi.technology/add --node-password $ARG2 --network-rpc-url https://voyage-rpc.moi.technology/babylon --wallet-address $ARG4 --node-index $ARG5 --local-rpc-url $ARG6
# sleep 5
# echo "Guardian registered"
# echo "sudo docker run --network host -it -d -w /data -v $(pwd):/data sarvalabs/moipod:latest server --babylon --data-dir moi --log-level DEBUG --node-password $ARG2 --clean-db true"
# sudo docker run --network host -it -d -w /data -v $(pwd):/data sarvalabs/moipod:latest server --babylon --data-dir moi --log-level DEBUG --node-password $ARG2 --clean-db true
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