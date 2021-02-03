#!/bin/sh

URL="https://github.com/tom890180/ferox.git"
PROGRAM="/usr/bin/python3.7 /share/wlc/main.py"

echo "STARTED UPDATE" >> /home/tom/ferox.log

sleep 1

`ps -ef | grep "$PROGRAM" | grep -v grep | awk '{print $2}' | xargs kill`

sleep 2

`rm -rf /share/wlc/*`
`rm -rf /share/wlc/.git`
`rm /share/wlc/.gitignore`

mkdir /share/wlc/
git clone $URL /share/wlc/

`mkdir /share/wlc/images/`


`ln -s /home/tom/ferox_conf.yml /share/wlc/conf.yml`

$PROGRAM &
