#!/bin/bash
export RED='\033[1;31m'
xpra start --daemon=no --start="xterm -e \"./Discord/Discord --no-sandbox\""  --bind-tcp=0.0.0.0:$port 2>/dev/null &sleep 10 && echo -e CONNECT WITH: ${RED}`hostname -I|grep -wo "17.* " |sed 's/ /\n/g'| sed "s/\(17.*\)$/xpra attach tcp:\/\/$USER\@\1:$port/"`&&sleep 9999999999999999999999999999999999
