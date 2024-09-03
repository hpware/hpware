#!/bin/bash

echo Installing Stuff...
sudo dpkg --add-architecture i386 
sudo apt update
echo Installing Chewing Python3 Docker Curl Wget Vim and Nvim
sudo apt install curl wget ibus-chewing python3 python3-pip docker.io docker-compose vim neovim -y 
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bookworm/winehq-bookworm.sources
curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | sudo bash
sudo apt update
echo Installing Wine
sudo apt install --install-recommends winehq-staging -y
sudo add-apt-repository universe
sudo apt install libfuse2t64 speedtest speedtest-cli -y
cd ~
curl https://desktop.line-scdn.net/win/new/LineInst.exe --output LineInst.exe
wine LineInst.exe
echo Installing Google Chrome
curl -L https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb --output GoogleChrome.deb
sudo dpkg -i GoogleChrome.deb
echo Installed!
echo Running Speedtest
speedtest
