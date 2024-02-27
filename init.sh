#!/usr/bin/bash

docker network create --attachable --internal --subnet 10.241.32.0/24 nw_01_02
docker network create --attachable --internal --subnet 10.241.33.0/24 nw_02_03
