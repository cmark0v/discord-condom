#!/bin/bash
export XPRA_port=8885
export DLLINK=$(curl `cat dllink`|grep -o 'https://.*\.tar\.gz\"'|sed 's/\"//')
export FILE=`echo $DLLINK|grep discord-.*\\.gz -o`
(ls $FILE&&echo "have latest version")||(echo "DL $FILE from $DLLINK"&&curl -o $FILE $DLLINK && cp $FILE discord-0.0.latest.tar.gz)
#docker network inspect CORD||docker network create CORD
docker build -t discord --build-arg UID=$UID --build-arg port=$XPRA_port  --network host .
