# download and install Node.js (you may need to restart the terminal)
nvm install 22

echo "PM2 Process manager will now be installed"
sleep 2
npm install pm2@latest -g
cmd=$(pm2 startup | grep sudo)
sudo $cmd
exit
