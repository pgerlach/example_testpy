#!/bin/bash

cd $(dirname $0)

## setup

NODE_VERSION=0.8.12

## python
## assumes we do have virtualenv

mkdir -p python
virtualenv python

. ./python/bin/activate

pip install -U --use-mirrors -r ./requirements.txt

## node
## assumes we do have nvm installed

. ~/.nvm/nvm.sh
nvm install ${NODE_VERSION}  # may fail if already installed, but no error code returned
nvm use ${NODE_VERSION} # 

## global activate file

rm -f ./activate
cat << EOF >> ./activate
. $PWD/python/bin/activate
. ~/.nvm/nvm.sh
nvm use ${NODE_VERSION}
EOF
chmod +x ./activate
