#!/bin/bash
#runs on your host x11, shitty
docker run --rm -it --name discord -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY --device /dev/snd -v /etc/localtime:/etc/localtime:ro -v ~/.config/discord/:/home/dubuntu/.config/discord/ --net CORD discord:latest ./Discord/Discord --no-sandbox

