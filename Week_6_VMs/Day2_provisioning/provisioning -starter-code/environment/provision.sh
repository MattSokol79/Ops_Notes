#!/bin/bash
# Makes it so it runs it as a bash script --> decorator

# So this code is essentially automatically run in bash i.e. installs nginx
# so we can pass the tests for nginx!
sudo apt update -y
sudo apt install nginx -y

# Install nodejs
sudo apt-get install python-software-properties -y
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install nodejs -y

# Install pm2
sudo npm install pm2 -g