#!/usr/bin/bash
set -e
set -v 

DIR="$(dirname $(realpath $0))"
cd $DIR

export NODE_OPTIONS=' --sysctl=net.ipv4.conf.all.src_valid_mark=1  --sysctl=net.ipv4.ip_forward=1  --cap-add=NET_ADMIN '
export NODE_NAME="node02"

./start-node.sh
