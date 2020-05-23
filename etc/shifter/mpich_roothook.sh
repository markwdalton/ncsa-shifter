#!/bin/sh

UDI_PREFIX=opt/udiImage/modules
mkdir -p ${UDI_PREFIX}/mpich/lib64
ln -s /opt/cray/mpt/7.7.4/gni/mpich-gnu-abi/5.1/lib/libmpi.so.12 ${UDI_PREFIX}/mpich/lib64/libmpich.so.12
