#!/usr/bin/bash
set +e
set -v

docker stop node01
docker stop node02
docker stop node03

docker rm node01
docker rm node02
docker rm node03

docker network rm nw_01_02
docker network rm nw_02_03

