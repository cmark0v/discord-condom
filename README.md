#docker-discord

make discord client run in docker container and run with xpra. for safety/security and to allow it ot be put in the backgound and silenced completely and seamlessly brought back havent tried mic and camera

``build.sh`` builds it from Dockerfile
``run.sh`` runs it - stderr is sent to /dev/null and it returns xpra client command
