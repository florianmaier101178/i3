#!/bin/bash

nmcli c show --active | grep gpd0 > /dev/null
liebherr_vpn_status=$(echo $?)
if [ $liebherr_vpn_status -eq 0 ]; then
    printf "  liebherr vpn"
    exit 0
fi

