#!/usr/bin/bash
set -e
set -v 

DIR="$(dirname $(realpath $0))"
cd $DIR

docker network connect --ip 10.241.32.11/24  nw_01_02  node02
docker network connect --ip 10.241.33.11/24  nw_02_03  node02
docker network exec -it /node/start_after_connect.sh

