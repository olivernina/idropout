#!/bin/bash

echo "Running the first one"
python ../../convnet.py --data-path=../data/cifar-100-fixed/ --save-path=./ --test-range=2 --train-range=1 --layer-def=./layers-80sec.cfg --layer-params=./layer-params-80sec.cfg --test-freq=13 --epochs=500 --data-provider=cifar --save-path=./ 2>&1 | tee ./logs/no-dropout.log
