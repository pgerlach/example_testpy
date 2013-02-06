#!/bin/bash

cd $(dirname $0)

virtualenv .
. ./bin/activate
pip install -U --use-mirrors -r requirements.txt
