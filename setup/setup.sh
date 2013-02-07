#!/bin/bash

cd $(dirname $0)

mkdir python
virtualenv python

cat << EOF > ./activate
. $PWD/python/bin/activate
EOF
chmod +x ./activate

. ./activate

pip install -U --use-mirrors -r ./requirements.txt
