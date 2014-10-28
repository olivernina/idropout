#!/bin/bash

echo "Testing the net"

python ../../convnet.py -f ./checkpoints/150.2 --test-only=1 --logreg-name=logprob --test-range=6 2>&1 | tee logs/test.log

python ../../convnet.py -f ./checkpoints/150.2 --multiview-test=1 --data-provider=cifar-cropped --crop-border=4 --test-only=1 --logreg-name=logprob --test-range=6 2>&1 | tee logs/test-multiview.log
