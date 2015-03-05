#!/bin/bash

PYPY=$1

cd /home/core
tar -xjf ${PYPY}.tar.bz2
mv ${PYPY} /home/host-core/pypy

cd /home/host-core/pypy/bin
ln -s /lib64/libncurses.so.5.9 libtinfo.so.5

