#!/bin/bash

clear
echo "We will now install node.js"
sleep 2
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
NODE_MAJOR=18
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
sudo apt update
sudo apt install -y nodejs
sudo apt install -y npm

echo "PM2 Process manager will now be installed"
sleep 2
sudo npm install -g pm2
cmd=$(pm2 startup | grep sudo)
sudo $cmd
exit
