#!/bin/bash

sudo apt-get update
sudo apt-get upgrade

sudo apt-get install git liblua5.3* libsdl2* synapse steam vim

git config --global user.email "yerick147083@gmail.com"
git config --global user.name "EricWRogers"
git config --global credential.helper store
sudo git config --system core.editor vim

# Mono
sudo apt install gnupg ca-certificates
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
sudo apt update

sudo apt install mono-devel mono-complete mono-dbg referenceassemblies-pcl ca-certificates-mono mono-xsp4 msbuild
