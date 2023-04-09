#!/bin/bash
#docker network inspect CORD||docker network create CORD
docker run --rm -it --name discord --device /dev/snd -v /etc/localtime:/etc/localtime:ro -v ~/.config/discord/:/home/dubuntu/.config/discord/ --net CORD  discord:latest 

