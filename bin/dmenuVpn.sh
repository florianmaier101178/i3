#!/bin/bash

vpn_commands="connect\ndisconnect\nstatus"

vpn_command=$(echo -e "$vpn_commands" | dmenu -i -p "VPN:")

case "$vpn_command" in
    connect) 
        lhvpnc
        ;;
    disconnect)
        lhvpnd
        ;;
    status)
        notify-send -t 3000 "$(lhvpns)"
        ;;
esac

