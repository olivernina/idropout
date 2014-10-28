#!/bin/bash

echo "Running the first one"
python ../../convnet.py --data-path=../data/cifar-10/ -f ./checkpoints/ --save-path=./ --test-range=6 --train-range=1-5 --layer-def=./layers-80sec.cfg --layer-params=./layer-params-80sec.cfg --test-freq=15 --epochs=300 --data-provider=cifar --save-path=./ 2>&1 | tee ./logs/no-dropout-300.log
