#!/bin/bash

echo Installing Web Server Componenets...
sudo apt update
sudo apt-get install curl wget -y
curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | sudo bash
sudo apt update
sudo apt install nginx docker.io docker-compose speedtest-cli -y
echo Install Complete !
