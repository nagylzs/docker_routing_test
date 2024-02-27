#!/usr/bin/bash
set -e
set -v 

DIR="$(dirname $(realpath $0))"
cd $DIR


export NODE_OPTIONS=' --network nw_02_03 --ip 10.241.33.12 --cap-add=NET_ADMIN '
export NODE_NAME="node03"


./start-node.sh

