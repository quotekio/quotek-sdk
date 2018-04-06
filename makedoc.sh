#!/bin/bash

### DOCUMENTATION BUILD ###

cd doxygen
./makedoc.sh
cd breathe
make clean
make html
cd ../../
