# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2018-present Team CoreELEC (https://coreelec.org)

PKG_NAME="libamcodec"
PKG_VERSION="eb874808303936404027f3fc7f7434285d0a7d2f"
PKG_SOURCE_NAME="${PKG_NAME}-${ARCH}-${PKG_VERSION}.tar.xz"
PKG_LICENSE="proprietary"
PKG_SITE="http://openlinux.amlogic.com"
PKG_URL="https://sources.coreelec.org/${PKG_SOURCE_NAME}"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="libamplayer: Interface library for Amlogic media codecs"
PKG_TOOLCHAIN="manual"

case "${ARCH}" in
  arm)
    PKG_SHA256="9465b1029aa8ca7e2d1c5ffc3c2c9c5c524682e1c84321d91766dbdc3f26ccb6"
    ;;
  aarch64)
    PKG_SHA256="b6620dea6fe1856695bfd032b3ddb2310c9bd5556920bc818d656c1a325b9e1a"
    ;;
esac

make_target() {
  cp -PR * $SYSROOT_PREFIX
}

makeinstall_target() {
  mkdir -p $INSTALL/usr
    cp -PR usr/lib $INSTALL/usr
}
