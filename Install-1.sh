#!/bin/bash

clear
echo "We will now install node.js"
# Install node.js
# installs nvm (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
sleep 2
source ~/.bashrc
sleep 2
exit
