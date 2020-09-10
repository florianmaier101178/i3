#!/bin/bash

# backup i3 config
if [ -f ~/.config/i3/config ]; then
    DATE=`date '+%Y-%m-%d_%H:%M:%S'`
    mv ~/.config/i3/config ~/.config/i3/config.$DATE
fi

# link i3 config
ln -s ~/i3/i3config ~/.config/i3/config

# link i3 config
ln -s ~/i3/i3status.conf ~/.config/i3/i3status.conf

# link i3 helper commands
sudo ln -s ~/i3/bin/moveWorkspaceRight.sh /usr/local/bin/moveWorkspaceRight
sudo ln -s ~/i3/bin/moveWorkspaceLeft.sh /usr/local/bin/moveWorkspaceLeft

# install fonts
if [ ! -d ~/.fonts ]; then
    mkdir ~/.fonts
fi

if [ ! -f ~/.fonts/fa-brands-400.ttf ]; then
    ln -s ~/i3/fonts/fa-brands-400.ttf ~/.fonts/fa-brands-400.ttf
fi

if [ ! -f ~/.fonts/fa-regular-400.ttf ]; then
    ln -s ~/i3/fonts/fa-regular-400.ttf ~/.fonts/fa-regular-400.ttf
fi

if [ ! -f ~/.fonts/fa-solid-900.ttf ]; then
    ln -s ~/i3/fonts/fa-solid-900.ttf ~/.fonts/fa-solid-900.ttf
fi

