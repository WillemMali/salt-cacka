#!/bin/bash

# curl | bash me for lazy (and insecure) install

if [ "$(whoami)" != "root" ]; then
    su -s "$0"
    exit
fi

apt-get intall sudo git salt-daemon salt-minion
