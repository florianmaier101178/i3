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
ln -s ~/i3/py3status/k8senv.py ~/.config/i3/py3status/k8senv.py
ln -s ~/i3/py3status/k8senv.sh ~/.config/i3/py3status/k8senv.sh

# link conkyrc
sudo ln -s ~/i3/conky.conf ~/.config/i3/conky.conf

# link i3 helper commands
sudo ln -s ~/i3/bin/moveWorkspaceRight.sh /usr/local/bin/moveWorkspaceRight
sudo ln -s ~/i3/bin/moveWorkspaceLeft.sh /usr/local/bin/moveWorkspaceLeft
sudo ln -s ~/i3/bin/conkyStarter.sh /usr/local/bin/conkyStarter.sh
sudo ln -s ~/i3/bin/dmenuPrompt.sh /usr/local/bin/dmenuPrompt.sh
sudo ln -s ~/i3/bin/dmenuDisplay.sh /usr/local/bin/dmenuDisplay.sh
sudo ln -s ~/i3/bin/dmenuVpn.sh /usr/local/bin/dmenuVpn.sh
sudo ln -s ~/i3/bin/dmenuProjects.sh /usr/local/bin/dmenuProjects.sh

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

