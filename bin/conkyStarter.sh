#!/bin/bash

# see https://askubuntu.com/questions/438608/conky-does-not-starting-automatically-after-boot

# wait 5 seconds
sleep 5

# start conky
conky -c /home/flo/.config/i3/conky.conf

