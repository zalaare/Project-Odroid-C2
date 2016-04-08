################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
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

PKG_NAME="gcc-linaro-aarch64-none-elf"
PKG_VERSION="4.9-2014.09_linux"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE=""
PKG_URL="https://releases.linaro.org/14.09/components/toolchain/binaries/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_HOST=""
PKG_PRIORITY="optional"
PKG_SECTION="lang"
PKG_SHORTDESC=""
PKG_LONGDESC=""

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

make_host() {
  :
}

makeinstall_host() {
  mkdir -p $ROOT/$TOOLCHAIN/lib/gcc-linaro-aarch64-none-elf/
    cp -a * $ROOT/$TOOLCHAIN/lib/gcc-linaro-aarch64-none-elf
}
