FROM ubuntu:latest
ARG UID
ARG port
USER root
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y 
RUN apt-get upgrade -y 
RUN apt-get --no-install-recommends -y install  xpra python3-pil libc6 libasound2 libatomic1 libgconf-2-4 libnotify4 libnspr4 libnss3 libstdc++6 libxss1 libxtst6 libc++1 libxshmfence1 libatk-bridge2.0-0 libdrm2 libgtk-3-0 libx11-xcb1 libgbm1 && apt-get clean
RUN apt-get --no-install-recommends -y install xterm
RUN groupadd -g $UID dubuntu
RUN useradd -m -p x -g $UID -s /bin/bash dubuntu
RUN ln -s /bin/echo /usr/bin/wget
#keep this creep from sending crash reports over rest withot asking
COPY discord-0.0.*.tar.gz /home/dubuntu/discord.tar.gz
RUN rm -rf /tmp/Discord
WORKDIR /home/dubuntu
USER dubuntu
RUN tar xvzf discord.tar.gz
ENV port=$port
ENV USER=dubuntu
COPY entrypoint.sh /home/dubuntu/entry.sh
ENTRYPOINT /home/dubuntu/entry.sh
