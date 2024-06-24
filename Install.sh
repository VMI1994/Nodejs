#!/bin/bash

clear
echo "We will now install node.js"
# Install node.js
# installs nvm (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
# download and install Node.js (you may need to restart the terminal)
nvm install 18
exec bash
# verifies the right Node.js version is in the environment
node -v # should print `v18.20.3`
# verifies the right NPM version is in the environment
npm -v # should print `10.7.0`
echo "PM2 Process manager will now be installed"
sleep 2
sudo npm install -g pm2
cmd=$(pm2 startup | grep sudo)
sudo $cmd
exit
