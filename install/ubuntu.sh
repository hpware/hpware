#!/bin/bash

echo Installing Stuff...
sudo dpkg --add-architecture i386 
sudo apt update
sudo apt install curl wget ibus-chewing python3 python3-pip docker.io docker-compose gnome-tweaks vim neovim -y 
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
curl -L https://github.com/ful1e5/Bibata_Cursor/releases/download/v2.0.7/Bibata-Modern-Ice.tar.xz --output Bibata-Modern-Ice.tar.xz
tar -xJf Bibata-Modern-Ice.tar.xz
mv Bibata-Modern-Ice ~/.icons
curl -L https://github.com/ful1e5/Bibata_Cursor/releases/download/v2.0.7/Bibata-Original-Ice.tar.xz --output Bibata-Original-Ice.tar.xz
tar -xJf Bibata-Original-Ice.tar.xz
mv Bibata-Original-Ice ~/.icons
cd ~
echo Change Mouse Cursor via gnome-tweaks