#!/bin/bash

ROOTFS_VER="30650"
ROOTFS_TXZ="base.tar.xz"
ROOTFS_URL="https://github.com/clearlinux/docker-brew-clearlinux/raw/base-${ROOTFS_VER}/${ROOTFS_TXZ}"

LNCR_BLD="19070200-clear"
LNCR_ZIP="icons.zip"
LNCR_FN="Clear.exe"
LNCR_URL="https://github.com/wight554/wsldl/releases/download/${LNCR_BLD}/${LNCR_ZIP}"

if type curl >/dev/null 2>&1 ;then
    DLR="curl"
fi
if type wget >/dev/null 2>&1;then
    DLR="wget"
fi
if type aria2c >/dev/null 2>&1; then
    DLR="aria2c -x4"
fi