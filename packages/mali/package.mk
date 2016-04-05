################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2014 Alex Deryskyba (alex@codesnake.com)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="mali"
PKG_VERSION="r5p0-01rel0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="nonfree"
PKG_SITE="http://openlinux.amlogic.com:8000/download/ARM/filesystem/"
PKG_URL="http://malideveloper.arm.com/downloads/drivers/binary/utgard/r5p0-01rel0/mali-450_${PKG_VERSION}_linux_1+fbdev+arm64-v8a.tar.gz"
PKG_DEPENDS_TARGET="toolchain mesa-headers:host"
PKG_PRIORITY="optional"
PKG_SECTION="graphics"
PKG_SHORTDESC="Pre-compiled libraries for Mali 450 GPUs"
PKG_LONGDESC="Pre-compiled libraries for Mali 450 GPUs"
PKG_SOURCE_DIR="fbdev"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

make_target() {
 : nothing
}

makeinstall_target() {
  mkdir -p $SYSROOT_PREFIX/usr/lib
    cp -PR *.so* $SYSROOT_PREFIX/usr/lib
  mkdir -p $INSTALL/usr/lib
    cp -PR *.so* $INSTALL/usr/lib
}

post_install() {
  enable_service unbind-console.service
}
