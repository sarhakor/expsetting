#!/bin/bash
NAME_IMAGE=$1
sudo docker build --build-arg USER_NAME=${USER} -t ${NAME_IMAGE} ./dockerfile
