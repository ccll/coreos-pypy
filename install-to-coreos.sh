#!/bin/bash

PYPY=$1

cd /home/core

echo Extracting ${PYPY}...
tar -xjf ${PYPY}.tar.bz2

echo Copying to host...
cp -rp ${PYPY} /home/host-core/pypy

cd /home/host-core/pypy/bin
ln -s -f /lib64/libncurses.so.5.9 libtinfo.so.5

touch /home/host-core/pypy/.ok

