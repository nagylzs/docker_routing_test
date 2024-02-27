#!/usr/bin/bash
set -e
set -v 

DIR="$(dirname $(realpath $0))"
cd $DIR

export NODE_OPTIONS=' --network nw_01_02 --ip 10.241.32.12 --cap-add=NET_ADMIN '
export NODE_NAME="node01"

./start-node.sh

