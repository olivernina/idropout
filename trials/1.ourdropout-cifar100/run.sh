#!/bin/bash

echo "Running the first one"
python ../../convnet.py --data-path=../data/cifar-100-fixed/ --save-path=./ --test-range=2 --train-range=1-1 --layer-def=./layers-80sec-cifar100.cfg --layer-params=./layer-params-80sec-cifar100.cfg --test-freq=15 --epochs=600 --data-provider=cifar --save-path=./ 2>&1 | tee ./logs/no-dropout-300.log
