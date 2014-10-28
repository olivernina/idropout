#!/bin/bash

echo "Running the first one"
python ../../convnet.py --data-path=../data/cifar-10/ --save-path=./ --test-range=5 --train-range=1-4 --layer-def=./layers-80sec.cfg --layer-params=./layer-params-80sec.cfg --test-freq=13 --epochs=150 --data-provider=cifar --save-path=./ 2>&1 | tee ./logs/no-dropout.log
