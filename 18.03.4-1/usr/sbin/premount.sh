#!/bin/sh

# These are the arguments passed to this script:
UDI_ROOT=$1
USERNAME=$2

set -e

#mkdir -p /var/opt/cray/shifter/etc
#cp -rL /etc/opt/cray/shifter/etc_files/* /var/opt/cray/shifter/etc
#/opt/cray/shifter/default/sbin/gen-auth-files $USERNAME /var/opt/cray/shifter/etc

mkdir -p mnt/abc
mount --bind /mnt/abc mnt/abc


mkdir -p ufs
mkdir -p var/opt/cray/alps

mount --bind /ufs ufs
mount --bind /var/opt/cray/alps var/opt/cray/alps

ln -s mnt/abc/scratch  scratch
ln -s mnt/abc/u        u
ln -s mnt/abc/sw       sw
ln -s sw/cm            cm
ln -s mnt/abc/projects projects

mkdir -p dsl/opt
mount --bind /dsl/opt dsl/opt
exit 0
