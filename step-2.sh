#!/bin/bash

# Install node.js
# download and install Node.js (you may need to restart the terminal)
clear
echo "Installing NodeJS version 22"
sleep 2
nvm install 22

#Install PM2
clear
echo "PM2 Process manager will now be installed"
sleep 2
npm install pm2@latest -g
sleep 2
cmd=$(pm2 startup | grep sudo)
echo $cmd | bash
exit
