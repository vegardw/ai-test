# alpaca-test

For testing alpaca-lora and alpaca-cpp

##  Ready the environment on a blank lambdalabs vm

```
./setup_env_lambdalabs_vm.sh
sudo reboot
```

## install bitsandbytes from code

```
cd projects/bitsandbytes
make cuda11x
sudo python setup.py install
```

## install alpaca-lora requirements

```
cd ../alpaca-lora
pip install -r requirements.txt
```
