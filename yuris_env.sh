#!/usr/bin/env bash

# Updating the distro
sudo apt update -y
sudo apt upgrade -y

# Git
sudo apt install git -y

# Miniconda
mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh
~/miniconda3/bin/conda init bash
~/miniconda3/bin/conda init zsh

# Mamba
gnome-terminal -- sh -c "bash -c \"conda install mamba -n base -c conda-forge -y; exec bash\""

# Installing useful Python libraries
gnome-terminal -- sh -c "bash -c \"mamba install jupyterlab ipywidgets pandas matplotlib -y; exec bash\""
gnome-terminal -- sh -c "bash -c \"mamba install -c conda-forge voila -y; exec bash\""

# VirtualBox
sudo apt install virtualbox-7.0

# Snap
sudo rm /etc/apt/preferences.d/nosnap.pref # Deletes the Linux Mint`s restriction file 
sudo apt install snapd

# VSCodium
sudo snap install codium --classic

# Postman
sudo snap install postman

# Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O ~/Downloads/google-chrome-stable_current_amd64.deb
sudo apt install ~/Downloads/google-chrome-stable_current_amd64.deb -y
