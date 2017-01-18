#!/usr/bin/python

import sys, pexpect
import time

gatt=pexpect.spawn('gatttool -I')
gatt.logfile = open("pylog.txt", "w")
gatt.sendline('connect 54:4A:16:2F:B9:94')
gatt.expect('Connection successful')
gatt.expect('Notification handle.*')
bad_string = gatt.after
gatt.sendline('disconnect')

bad_string = bad_string.split()[5:14]

good_string = time.strftime('\"%D %T\"') + " "

for d in bad_string:
  good_string += chr(int(d,16))


good_string += '\n'

print good_string

#f = open('/home/pi/www/cactus_2.csv','a')
#f.write(good_string)
#f.close()

sys.exit(0)
