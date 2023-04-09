#docker-discord

scripts to make discord client run in docker containerized XPRA session. for safety/security and to allow it to be put in the background and silenced completely and seamlessly brought back

 havent tried mic and camera

runs as user dubuntu with same UID number as host user, runs in xpra and goes into the background, must attach from desired client

``run.sh`` runs it - stderr is sent to /dev/null and it returns xpra client command
``build.sh`` - builds it
``dllink`` - link to download the client and future updates, used in build script
``entrypoint.sh``- entrypoint script, directs stderr to dev null and spawns discord in the xpra session, outputting command to attach to it specifically 
``Xrun.sh`` - runs it connecting to your host X session with domain socket - just for reference but not recommended


##reqs
``apt install xpra docker``
