#!/bin/bash

# Docker
curl -fsSL https://get.docker.com -o get-docker.sh 
sh get-docker.sh

# VS Code
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg

apt install -y apt-transport-https
apt update
apt install -y code

# Build tools
apt install -y build-essential

# Arduino / Dialout
adduser alexander dialout

# Python 
apt install -y python3-pip

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Git
apt install -y git 
git config --global user.name "Alexander Gherardi"
git config --global user.email "alexander.2003@live.com"