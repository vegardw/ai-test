# AI-test

For testing various AI/ML/LLM stuff

## General
###   Ready the environment on a blank lambdalabs vm

```
./setup_env_lambdalabs_vm.sh
```
## Alpaca-Lora
### install bitsandbytes from code

```
cd projects/bitsandbytes
make cuda11x
sudo python setup.py install
```

### install alpaca-lora requirements

```
cd ../alpaca-lora
pip install -r requirements.txt
```
