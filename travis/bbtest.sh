#!/bin/bash

echo "running setting up environment"
source oe-init-build-env
pwd
echo "MACHINE=\"qemux86-64\"" >> conf/local.conf
echo "SSTATE_MIRRORS=\"file://.* http://98.232.142.195:5688/master/sstate-cache/PATH\"" >> conf/local.conf

echo "Running bitbake, presumably using http sscache..."
bitbake core-image-minimal
echo "Downloads:"
ls -al downloads
echo "sstate-cache:"
ls -al sstate-cache | tail
