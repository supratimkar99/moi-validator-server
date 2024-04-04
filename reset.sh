#!/bin/bash

echo "$ARG1"
echo "$ARG2"

echo "Current user: $(whoami)"
echo "Reset script"


# sudo reboot
# ls -ltr
# docker ps -a
# echo "reset script"
# docker ps -a 

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
# echo "updating rmen buffer size"
# sudo sysctl -w net.core.rmem_max=26214400
# echo "updating wmen buffer size"
# sudo sysctl -w net.core.wmem_max=26214400
# docker pull sarvalabs/moipod:latest
# sudo docker run --network host -it -d -w /data -v $(pwd):/data sarvalabs/moipod:latest server --babylon --data-dir moi --log-level DEBUG --node-password $ARG1 --clean-db true
# sleep 4  # Adding a delay of 3 seconds
# docker ps -a
# echo "Reset script"
# ls -l

# # cd ./moi
# # cd ./db
# # ls -l