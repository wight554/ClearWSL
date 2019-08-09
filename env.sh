#!/bin/bash

ROOTFS_VER="30730"
ROOTFS_FN="clear-${ROOTFS_VER}-live-server"
ROOTFS_IXZ="${ROOTFS_FN}.iso.xz"
ROOTFS_URL="https://cdn.download.clearlinux.org/releases/${ROOTFS_VER}/clear/${ROOTFS_IXZ}"

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