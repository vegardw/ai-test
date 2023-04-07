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

## Misc
### update submodules

```
git submodule update --init --recursive
git submodule foreach --recursive 'git fetch && git checkout $(git symbolic-ref refs/remotes/origin/HEAD | sed "s@^refs/remotes/origin/@@") && git pull --recurse-submodules'
```
