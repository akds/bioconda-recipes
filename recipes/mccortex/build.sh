#!/bin/bash


##strictly use anaconda build environment
#CXX=${PREFIX}/bin/g++

#to fix problems with zlib
export C_INCLUDE_PATH=$C_INCLUDE_PATH:${PREFIX}/include
export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:${PREFIX}/include
export LIBRARY_PATH=$LIBRARY_PATH:${PREFIX}/lib

git clone --recursive https://github.com/mcveanlab/mccortex
make VERBOSE=1
mkdir -p ${PREFIX}/bin
cp bin/mccortex31 ${PREFIX}/bin

