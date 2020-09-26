#!/bin/bash

CONFIG_FILE=$(readlink /home/flo/.kube/config)

if [ $CONFIG_FILE == "/home/flo/.kube/config_haubusraspberrypiaks" ]; then
    printf "pi"
else
    cat /home/flo/.kube/config | grep "cluster: haubus" | awk '{print $2}' | sed 's/.\{3\}$//' | sed 's/^.\{6\}//' | awk '{printf $1}'
fi


