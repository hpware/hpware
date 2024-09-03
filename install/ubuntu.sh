#!/bin/bash

echo Installing Stuff...
sudo dpkg --add-architecture i386 
sudo apt update
sudo apt install curl wget ibus-chewing python3 python3-pip docker.io docker-compose vim neovim -y 
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/noble/winehq-noble.sources
curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | sudo bash
sudo apt update
sudo apt install --install-recommends winehq-staging -y
sudo add-apt-repository universe
sudo apt install libfuse2t64 speedtest -y
cd ~
curl https://desktop.line-scdn.net/win/new/LineInst.exe --output LineInst.exe
wine LineInst.exe
echo Installed!
