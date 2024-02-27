#!/usr/bin/bash
set -e
set -v 

DIR="$(dirname $(realpath $0))"
cd $DIR

docker network connect --ip 10.241.32.11  nw_01_02  node02
docker network connect --ip 10.241.33.11  nw_02_03  node02
docker exec -it node02 /node/start_after_connect.sh
