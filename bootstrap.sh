#!/bin/bash

# curl | bash me for lazy (and insecure) install

if [ "$(whoami)" != "root" ]; then
    su -s "$0"
    exit
fi

dpkg-reconfigure tzdata
dpkg-reconfigure locales

apt-get update && apt-get upgrade -y
apt-get intall sudo git salt-daemon salt-minion

username="willem"

useradd $username
adduser $username sudo
