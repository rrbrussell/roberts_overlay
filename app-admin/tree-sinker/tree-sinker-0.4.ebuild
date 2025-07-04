# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_12 python3_13 python3_14 )
DISTUTILS_USE_PEP517="hatchling"
DISTUTILS_SINGLE_IMPL="True"

inherit distutils-r1

DESCRIPTION="Syncs squashfs portage trees"
HOMEPAGE="https://github.com/rrbrussell/tree-sinker/"
SRC_URI="https://github.com/rrbrussell/tree-sinker/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~aarch64"
IUSE=""
RDEPEND="${PYTHON_DEPS} sys-fs/squashfs-tools"
BDEPEND="${PYTHON_DEPS}"
#Test are for devlopment not making sure the package works on installed
#systems
RESTRICT="test"

#src_prepare() {
#	distutils-r1_src_prepare
#}

#src_configure() {
#	distutils-r1_src_configure
#}

#src_compile() {
#	distutils-r1_python_compile
#}

src_install() {
	#Install the manual page
	doman man/tree-packer.1
	doman man/tree-sinker.1

	distutils-r1_src_install

	#Install the default configuration data
	insinto /etc
	doins etc/tree-packer.ini
	doins etc/tree-sinker.ini

	#Install the systemd timer and service
	insinto /usr/lib/systemd/system
	doins etc/systemd/system/tree-sinker@.service
	doins etc/systemd/system/tree-sinker@.timer

	elog "To setup tree-packer for auto execution the following symlink is suggested."
	elog ""
	elog "ln -s $(which tree-packer) /etc/portage/repo.postsync.d/tree-packer"
}
