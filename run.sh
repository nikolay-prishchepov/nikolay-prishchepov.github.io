#!/bin/bash

cd /home/pi/cactus

./f631.py
./f631.plt
./07cb.py
./07cb.plt

#eval `ssh-agent -s`
#ssh-add ~/.ssh/*_rsa

/usr/bin/git commit -a -m "cron"
/usr/bin/git push origin master
