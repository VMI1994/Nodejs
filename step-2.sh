#!/bin/bash

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
