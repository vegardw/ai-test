#!/bin/bash

# Add nvidia public keys and repository
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/7fa2af80.pub
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/3bf863cc.pub
sudo add-apt-repository "deb http://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/ /"

# Pin Nvidia packages
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-ubuntu2004.pin
sudo mv cuda-ubuntu2004.pin /etc/apt/preferences.d/cuda-repository-pin-600

# Update atp
sudo apt update

# Remove old cuda toolkit package
sudo apt remove -y --autoremove nvidia-cuda-toolkit
sudo apt purge -y nvidia-cuda-toolkit
sudo apt -y autoremove
sudo apt -y autoclean
# Install Cuda toolkit 11.7 from nvidia
sudo apt install -y cuda-toolkit-11-7
sudo apt -y autoremove
sudo apt -y autoclean

# Update remaining packages
# sudo apt upgrade -y

# Add environment variables to .bashrc
cat cuda_env_variables.sh >> ~/.bashrc

# Upgrade various python packages
python -m pip install --upgrade pip
pip install --upgrade setuptools wheel
pip install --upgrade numexpr
pip3 install --upgrade torch torchvision torchaudio
pip install transformers peft

echo "Setup complete, please reboot"
