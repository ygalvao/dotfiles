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
conda install mamba -n base -c conda-forge -y

# Installing useful Python libraries
mamba install jupyterlab ipywidgets pandas matplotlib -y
mamba install -c conda-forge voila -y

# VirtualBox
sudo apt install virtualbox-7.0

# Snap
sudo rm /etc/apt/preferences.d/nosnap.pref # Deletes the Linux Mint`s restriction file 
sudo apt install snapd

# VSCodium
sudo snap install codium --classic

# Postman
sudo snap install postman
