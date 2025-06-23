#!/bin/bash

# install dependencies
clear
echo "First install curl and npm"
sudo apt update 
sudo apt install -y npm curl

# installs nvm (Node Version Manager)
clear
echo "Installing Node Version Manager"
sleep 2
# Download and install nvm:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

# in lieu of restarting the shell
\. "$HOME/.nvm/nvm.sh"

# Download and install Node.js:
nvm install 24

# Verify the Node.js version:
node -v # Should print "v24.2.0".
nvm current # Should print "v24.2.0".

# Verify npm version:
npm -v # Should print "11.3.0".

clear
echo "PM2 Process manager will now be installed"
sleep 2
npm install pm2@latest -g
sleep 2
cmd=$(pm2 startup | grep sudo)
echo $cmd | bash
sudo reboot now &
exit
