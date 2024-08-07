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
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
clear
echo "type 'nvm install 22' at the command prompt before running step2.sh"
sleep 2
source ~/.bashrc
exec bash
exit
