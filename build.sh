#!/bin/bash
export XPRA_port=8885
ls discord-0.0*.tar.gz||wget -O discord-0.0.latest.tar.gz "`cat dllink`"
docker network inspect CORD||docker network create CORD
docker build -t discord --build-arg UID=$UID --build-arg port=$XPRA_port --network CORD .
