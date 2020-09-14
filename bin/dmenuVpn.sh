#!/bin/bash

vpn_commands="connect\ndisconnect"

vpn_command=$(echo -e "$vpn_commands" | dmenu -i -p "VPN:")

case "$vpn_command" in
    connect) 
        lhvpnc
        ;;
    disconnect)
        lhvpnd
        ;;
esac
