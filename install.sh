#!/bin/bash

# sudo apt-get update
# sudo apt-get upgrade

# sudo apt-get install git liblua5.3* libsdl2* synaptic steam vim snapd-xdg-open

sudo pacman -S vim blender nodejs

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si MAKEFLAGS="-j12"
yay -S snapd
yay -S opencl-amd
yay -S mono
yay -S msbuild

systemctl enable --now apparmor.service
systemctl enable --now snapd.apparmor.service
systemctl enable --now snapd.service

git config --global user.email "yerick147083@gmail.com"
git config --global user.name "EricWRogers"

git config --global credential.helper store
# Set git default editor to vim
sudo git config --system core.editor vim

#cd ../
#git clone https://github.com/EricWRogers/SoftwareEngineeringClass.git 

# VS_Code
sudo snap install code --classic --stable

# DotNet
# wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
# sudo dpkg -i packages-microsoft-prod.deb
# sudo add-apt-repository universe
# sudo apt-get install apt-transport-https
# sudo apt-get update
# sudo apt-get install dotnet-sdk-2.2

# DotNet Core
sudo snap install dotnet-sdk --classic --edge
sudo snap alias dotnet-sdk.dotnet dotnet

# Slack
sudo snap install slack --classic

# Gitkraken
sudo snap install gitkraken

# Discord
sudo snap install discord

# Chromium
sudo snap install chromium
