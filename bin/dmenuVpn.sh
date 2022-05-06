#!/bin/bash

vpn_commands="ui\nconnect\ndisconnect\nstatus\nintra"

vpn_command=$(echo -e "$vpn_commands" | dmenu -i -p "VPN:")

case "$vpn_command" in
    ui)
        /usr/bin/globalprotect launch-ui
        ;;
    connect) 
        lhvpnc
        ;;
    disconnect)
        lhvpnd
        ;;
    status)
        notify-send -t 3000 "$(lhvpns)"
        ;;
    intra)
        remmina -c ~/.local/share/remmina/group_rdp_liebherr-intra_10-4-8-165.remmina
        ;;
esac

