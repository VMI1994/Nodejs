#!/bin/bash

clear
echo "We will now install node.js"
# Install node.js
# installs nvm (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
sleep 2
source ~/.bashrc
sleep 2

# download and install Node.js (you may need to restart the terminal)
nvm install 22

echo "PM2 Process manager will now be installed"
sleep 2
npm install pm2@latest -g
cmd=$(pm2 startup | grep sudo)
sudo $cmd
exit