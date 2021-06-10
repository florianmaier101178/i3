#!/bin/bash

function cot_k8s_context() {
    notify-send -t 3000 "project for k8s context: cot !!! bb"
}

function business_k8s_context() {
    #notify-send -t 3000 "project for k8s context: business aaa"
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
}

projects="cot\nbusiness"

project=$(echo -e "$projects" | dmenu -i -p "Project for k8s context:")

case "$project" in
    cot)
        cot_k8s_context
        ;;
    business)
        business_k8s_context
        ;;
esac


