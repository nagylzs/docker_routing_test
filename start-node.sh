#!/usr/bin/bash
set -e
set -v 

DIR="$(dirname $(realpath $0))"
cd $DIR

set -x
docker run -it --rm --name ${NODE_NAME} --hostname ${NODE_NAME} \
    -e NODE_NAME=$NODE_NAME ${NODE_OPTIONS}  -v "$DIR/${NODE_NAME}":"/node" nicolaka/netshoot /node/start.sh


