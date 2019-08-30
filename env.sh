#!/bin/bash

ROOTFS_VER="30890"
ROOTFS_TXZ="base.tar.xz"
ROOTFS_SRC="https://raw.githubusercontent.com/clearlinux/docker-brew-clearlinux/"

LNCR_BLD="19082500"
LNCR_ZIP="icons.zip"
LNCR_FN="Clear.exe"
LNCR_URL="https://github.com/yuk7/wsldl/releases/download/${LNCR_BLD}/${LNCR_ZIP}"

if type curl >/dev/null 2>&1 ;then
    DLR="curl"
fi
if type wget >/dev/null 2>&1;then
    DLR="wget"
fi
if type aria2c >/dev/null 2>&1; then
    DLR="aria2c -x4"
fi

if [[ "$(curl ${ROOTFS_SRC}/base/VERSION)" == "${ROOTFS_VER}" ]]; then
    ROOTFS_URL="${ROOTFS_SRC}/base/${ROOTFS_TXZ}"
else
    ROOTFS_URL="${ROOTFS_SRC}/base-${ROOTFS_VER}/${ROOTFS_TXZ}"
fi
