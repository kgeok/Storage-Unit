#!/bin/bash
echo -----------------------------------------------
echo "AOSR v0.2, Written by Kevin George"
echo "Operating System Regeneration in Progress..."
echo -----------------------------------------------
sudo apt-get install Wicd
sudo apt-get install npm
sudo apt-get install XVKBD
sudo apt-get install python3-dev python3-venv
sudo apt-get install libavahi-compat-libdnssd-dev
sudo apt-get install xinput-calibrator
sudo apt-get git
sudo apt-get install ntp
sudo apt-get install pulseaudio pulseaudio-module-bluetooth
sudo usermod -a -G bluetooth root
sudo npm install npm -g
sudo npm install -g node.js
sudo npm install -g --unsafe-perm homebridge
sudo npm install -g --unsafe-perm homebridge-cmdswitch2

cd boot
git clone https://github.com/kgeok/Storage-Unit.git
git clone https://github.com/alexa-pi/AlexaPi.git
cd boot/Storage-Unit/AOSR/
mv index.html /var/www/
mv config.json /root/.homebridge/
mv icons /var/www/
mv smb.conf /etc/
mv Desktop /root/
mv shairport-sync.conf /etc/
mv /xfce4/ ~/.config/ 
chown -R user:group ~/.config/xfce4
cd ../
cd ../
cd AlexaPi/

./setup.sh
