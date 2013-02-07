#!/bin/bash

cd $(dirname $0)
. ../setup/activate

cd ../tests
py.test --junitxml=./test_results.xml --tb=line test.py
