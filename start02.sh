#!/usr/bin/bash
set -e
set -v 

DIR="$(dirname $(realpath $0))"
cd $DIR

NODE_OPTIONS_1=' --sysctl=net.ipv4.conf.all.src_valid_mark=1  --sysctl=net.ipv4.ip_forward=1  --cap-add=NET_ADMIN '
NODE_OPTIONS_2=' --network nw_01_02 --network nw_02_03 --ip 10.241.32.11/24 --ip 10.241.33.11/24 '
export NODE_OPTIONS="$NODE_OPTIONS_1 $NODE_OPTIONS_2"
export NODE_NAME="node02"

./start-node.sh
