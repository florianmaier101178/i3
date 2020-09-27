#!/bin/bash

contexts="dev\nint\nstable\nprod\npi\ncurrent"

context=$(echo -e "$contexts" | dmenu -i -p "K8s Context:")

case "$context" in
    dev)
        kubecfg change haubusdevaks
        ;;
    int)
        kubecfg change haubusintaks
        ;;
    stable)
        kubecfg change haubusstableaks
        ;;
    prod)
        kubecfg change haubusprodaks
        ;;
    pi)
        kubecfg change haubusraspberrypiaks
        ;;
    current)
        notify-send -t 3000 "$(kubecfg current)"
        ;;
esac

