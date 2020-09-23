#!/bin/bash

#cat /home/flo/.kube/config | grep "cluster: haubus" | awk '{print $2}' | sed 's/.\{3\}$//' | sed 's/^.\{6\}//' | awk '{printf $1}'

ip addr show enx98e743e24afa | grep "state UP" > /dev/null
liebherr_lan_status=$(echo $?)
liebherr_ip_address=$(ip addr show enx98e743e24afa | grep 'inet ' | awk '{print $2}' | cut -f1 -d"/")
if [ $liebherr_lan_status -eq 0 ]; then
    printf " $liebherr_ip_address"
    exit 0
fi

ip addr show eno2 | grep "state UP"
home_lan_status=$(echo $?)
home_ip_address=$(ip addr show eno2 | grep 'inet ' | awk '{print $2}' | cut -f1 -d"/")
if [ $home_lan_status -eq 0 ]; then
    printf "  home_ip_address"
    exit 0
fi

printf " down"
exit 1

