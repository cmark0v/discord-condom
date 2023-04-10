Discord Condom
==============

![docker-discord](concord.png)


scripts to conveniently make discord client run in docker containerized XPRA session. This keeps it from accessing so much about your network, system processes, files, etc

for safety/security and to allow it to be put in the background and silenced completely and seamlessly brought back

 havent tried mic and camera

runs as user dubuntu with same UID number as host user, runs in xpra and goes into the background, must attach from desired client

* ``run.sh`` runs it - stderr is sent to /dev/null and it returns xpra client command
* ``build.sh`` - builds it
* ``dllink`` - link to download the client and future updates, used in build script
* ``entrypoint.sh``- entrypoint script, directs stderr to dev null and spawns discord in the xpra session, outputting command to attach to it specifically 
* ``Xrun.sh`` - runs it connecting to your host X session with domain socket - just for reference but not recommended

todo
----
* set up secure interoperability with mic and camera in a convenient way
* produce an automated resume/xpra attach script from the run script
* igure out how to make it satisfied about the dbus unix domain socket
* check what information xpra can leak to it about the client and pack more settings for that
* add in shared folder for files and make accessible in interface easily
* add in some firewall rules mmaybe


reqs
----
``apt install xpra docker``
