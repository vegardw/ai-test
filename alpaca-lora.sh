#!/bin/bash

# Upgrade various python packages
python -m pip install --upgrade pip
pip install --upgrade setuptools wheel
pip install --upgrade numexpr
pip3 install --upgrade torch torchvision torchaudio
pip install transformers peft
