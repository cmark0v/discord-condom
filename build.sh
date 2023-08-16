#!/bin/bash
export XPRA_port=8885
export DLLINK=$(curl `cat dllink`|grep -o 'https://.*\.tar\.gz\"'|sed 's/\"//')
echo "DL discord from $DLLINK"
curl -o discord-0.0.latest.tar.gz $DLLINK 
docker network inspect CORD||docker network create CORD
docker build -t discord --build-arg UID=$UID --build-arg port=$XPRA_port --network CORD .
