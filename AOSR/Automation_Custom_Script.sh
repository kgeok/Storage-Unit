#!/bin/bash

echo "AOSR v0.1, Written by Kevin George"
echo "Operating System Regeneration in Progress..."

sudo apt-get install Wicd
sudo apt-get install npm
sudo apt-get install XVKBD
sudo apt-get install python3-dev python3-venv
sudo apt-get install libavahi-compat-libdnssd-dev
sudo apt-get install xinput-calibrator
sudo npm install npm -g
sudo npm install -g node.js
sudo npm install -g --unsafe-perm homebridge
sudo npm install -g --unsafe-perm homebridge-cmdswitch2




cd boot/AOSR/
mv index.html /var/www/
mv config.json /root/.homebridge/
mv Icons /var/www/
mv smb.conf /etc/
mv Desktop /root/
mv shairport-sync.conf /etc/

cd AlexaPi/

./setup.sh
