#!/bin/bash

# backup i3 config
if [ -f ~/.config/i3/config ]; then
    DATE=`date '+%Y-%m-%d_%H:%M:%S'`
    mv ~/.config/i3/config ~/.config/i3/config.$DATE
fi

# link i3 config
ln -s ~/i3/i3config ~/.config/i3/config

