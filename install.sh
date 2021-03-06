#!/bin/bash

curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
sudo apt install -y nodejs libavahi-compat-libdnssd-dev
sudo npm i -g --unsafe-perm mdns
sudo npm i -g --unsafe-perm homebridge
mkdir ~/.homebridge && cp config.json ~/.homebridge

sudo npm install -g --unsafe-perm homebridge-config-ui-x@3.6.1

sudo cp homebridge.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable homebridge
sudo systemctl start homebridge
