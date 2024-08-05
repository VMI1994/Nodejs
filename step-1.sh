#!/bin/bash

# install dependencies
sudo apt update 
which curl
if [ $? != 0 ]
then
  sudo apt install -y curl
fi
sudo apt install npm

# installs nvm (Node Version Manager)
clear
echo "Installing Node Version Manager"
sleep 2
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
clear
exec bash && bash step-2.sh
