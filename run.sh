#!/bin/bash
cd /home/pi/cactus
./ce54.py
./ce54.plt
./b994.py
./b994.plt
git commit -a -m "cron"
git push origin master
