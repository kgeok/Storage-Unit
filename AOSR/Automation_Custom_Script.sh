#!/bin/bash

exec 1> AOSR.log 2>&1

echo -----------------------------------------------
echo "AOSR v0.4, Written by Kevin George"
echo "Operating System Regeneration in Progress..."
echo -----------------------------------------------

sudo apt-get -y install wicd
sudo apt-get -y install npm
sudo apt-get -y install xvkbd
sudo apt-get -y install python3-dev python3-venv
sudo apt-get -y install libavahi-compat-libdnssd-dev
sudo apt-get -y install xinput-calibrator
sudo apt-get -y install git
sudo apt-get -y install ntp
sudo apt-get -y install pulseaudio pulseaudio-module-bluetooth
sudo usermod -a -G bluetooth root
sudo npm install npm -g
sudo npm install -g node.js
sudo npm install -g --unsafe-perm homebridge
sudo npm install -g --unsafe-perm homebridge-cmdswitch2
echo -----------------------------------------------
echo "Phase 1 Complete!"
echo -----------------------------------------------
cd boot
git clone https://github.com/kgeok/Storage-Unit.git
git clone https://github.com/alexa-pi/AlexaPi.git
cd Storage-Unit/

cp index.html /var/www/
cd AOSR/
cp icons /var/www/
cp config.json /root/.homebridge/
cp smb.conf /etc/
cp Desktop /root/
cp shairport-sync.conf /etc/
cp /xfce4/ ~/.config/ 
chown -R user:group ~/.config/xfce4
cd ../
cd ../
cd AlexaPi/
pwd
echo -----------------------------------------------
echo "Phase 2 Complete!"
echo -----------------------------------------------
chmod +x setup.sh
./setup.sh
