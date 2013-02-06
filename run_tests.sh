#!/bin/bash

cd $(dirname $0)
. ./bin/activate

py.test --junitxml=./test_output.xml test.py
