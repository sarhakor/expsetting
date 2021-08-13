#!/bin/bash
PATH_EXPSETTING=$1
PATH_DATASET=$2
PATH_PROJECT=$3
NAME_IMAEG=$4
NAME_CONTAINER=$5

sudo docker run \
    -it \
    --runtime=nvidia \
    --userns=host \
    --net=host \
    --ipc=host \
    --gpus all \
    --privileged \
    --user $(id -u ${USER}):$(id -g ${USER}) \
    -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY \
    -v /etc/passwd:/etc/passwd:ro \
    -v /etc/group:/etc/group:ro \
    -v /run/user/1000:/run/user/1000 \
    -v /dev:/dev \
    -v ${PATH_EXPSETTING}:/home/${USER}/SETUP
    -v ${PATH_DATASET}:/home/${USER}/DATASET \
    -v ${PATH_PROJECT}:/home/${USER}/PROJ \
    --name ${NAME_CONTAINER} ${NAME_IMAEG}
