#!/bin/bash
cd /home/pi/cactus
./ce54.py
./ce54.plt
./b994.py
./b994.plt
/usr/bin/git commit -a -m "cron"
/usr/bin/git push origin master
