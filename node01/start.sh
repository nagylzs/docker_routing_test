#!/bin/zsh

ip route add 10.241.33.0/24 via 10.241.32.11

exec /bin/zsh -i
