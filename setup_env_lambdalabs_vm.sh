#!/bin/bash

# Add nvidia public keys and repository
sudo apt-key adv -y --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/7fa2af80.pub
sudo apt-key adv -y --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/3bf863cc.pub
sudo add-apt-repository -y "deb http://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/ /"

# Pin Nvidia packages
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-ubuntu2004.pin
sudo mv cuda-ubuntu2004.pin /etc/apt/preferences.d/cuda-repository-pin-600

# Update atp
sudo apt update

# Remove old cuda toolkit package
sudo apt remove -y --autoremove nvidia-cuda-toolkit
sudo apt -y autoremove
sudo apt -y autoclean
# Install Cuda toolkit 11.7 from nvidia
sudo apt install -y cuda-toolkit-11-7

# Update remaining packages
sudo apt upgrade -y

# Add environment variables to .bashrc
cat cuda_env_variables.sh >> ~/.bashrc

# Upgrade various python packages
pip install --upgrade numexpr
pip3 install --upgrade torch torchvision torchaudio

echo "Setup complete, please reboot"