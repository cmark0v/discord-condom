FROM ubuntu:latest
ARG UID
ARG port
USER root
RUN apt-get update -y --force-yes
RUN apt-get upgrade -y --force-yes
RUN apt-get --no-install-recommends -y --force-yes install apt-utils
RUN apt-get --no-install-recommends -y --force-yes install libc6 libasound2 libatomic1 libgconf-2-4 libnotify4 libnspr4 libnss3 libstdc++6 libxss1 libxtst6 libc++1 
RUN apt-get --ignore-missing --no-install-recommends -y --force-yes install libxshmfence1 libxshmfence-dev libatk-bridge2.0-0 libdrm2 libgtk-3-0 libx11-xcb1 libgbm1 xpra 
RUN apt-get --no-install-recommends -y --force-yes install python3-dbus python3-xdg xterm
RUN apt-get --no-install-recommends -y --force-yes install python3-pil
RUN apt-get --no-install-recommends -y --force-yes install dbus
#RUN apt-get --no-install-recommends -y --force-yes install strace
RUN groupadd -g $UID dubuntu
RUN useradd -m -p x -g $UID -s /bin/bash dubuntu
RUN ln -s /bin/echo /usr/bin/wget
#keep this creep from sending crash reports over rest like a fucking schlub
COPY discord-0.0.latest.tar.gz  /home/dubuntu/discord.tar.gz
#COPY discord-0.0.*.tar.gz /tmp/discord.tar.gz
RUN rm -rf /tmp/Discord
WORKDIR /home/dubuntu
USER dubuntu
RUN tar xvzf discord.tar.gz
ENV port=$port
ENV USER=dubuntu
COPY entrypoint.sh /home/dubuntu/entry.sh
ENTRYPOINT /home/dubuntu/entry.sh
