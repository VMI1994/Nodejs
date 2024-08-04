#!/bin/bash

clear
echo "Which version of Nodejs would you like to install?"
read version
echo
echo "We will now install node.js"


# install dependencies
sudo apt update 
which curl
if [ $? != 0 ]
then
  sudo apt install -y curl
fi

# installs nvm (Node Version Manager)
clear
echo "Installing Node Version Manager"
sleep 2
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
source ~/.bashrc
sleep 2
exec bash

# Install node.js
# download and install Node.js (you may need to restart the terminal)
clear
echo "Installing NodeJS version $version"
sleep 2
nvm install $version
source ~/.bashrc

# Install Node Package Manager
sudo apt install -y npm

#Install PM2
clear
echo "PM2 Process manager will now be installed"
sleep 2
npm install pm2@latest -g
sleep 2
cmd=$(pm2 startup | grep sudo)
echo $cmd | bash
exit
