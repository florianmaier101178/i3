#!/bin/bash

#cat /home/flo/.kube/config | grep "cluster: haubus" | awk '{print $2}' | sed 's/.\{3\}$//' | sed 's/^.\{6\}//' | awk '{printf $1}'

ip addr show enp0s31f6 | grep "state UP" > /dev/null
liebherr_lan_status=$(echo $?)
if [ $liebherr_lan_status -eq 0 ]; then
    liebherr_ip_address=$(ip addr show enp0s31f6 | grep 'inet ' | awk '{print $2}' | cut -f1 -d"/")
    printf " $liebherr_ip_address"
    exit 0
fi

ip addr show eno2 | grep "state UP" > /dev/null
home_lan_status=$(echo $?)
if [ $home_lan_status -eq 0 ]; then
    home_ip_address=$(ip addr show eno2 | grep 'inet ' | awk '{print $2}' | cut -f1 -d"/")
    printf " $home_ip_address"
    exit 0
fi

printf " down"
exit 1

