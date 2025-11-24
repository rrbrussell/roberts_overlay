# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit rpm

DESCRIPTION="Redhat configuration macros for RPM"
HOMEPAGE="https://src.fedoraproject.org/rpms/redhat-rpm-config"
SRC_URI="https://download-ib01.fedoraproject.org/pub/fedora/linux/releases/43/Everything/source/tree/Packages/r/redhat-rpm-config-343-11.fc43.src.rpm"
LICENSE="GPL-3+-with-autoconf-exception"
SLOT="0"
KEYWORDS="~aarch64 ~amd64"
IUSE=""
RDEPEND="app-arch/rpm dev-util/rpmdevtools"

#Test are for devlopment not making sure the package works on installed
#systems
RESTRICT="test"

src_unpack() {
    echo ${S}
    mkdir -p ${S}
    cd ${S}
    rpm_unpack ${A}
}

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
    
	mkdir -p ${D}/usr/lib/rpm/redhat
	install -p -m 644 -t ${D}/usr/lib/rpm/redhat macros rpmrc
	install -p -m 444 -t ${D}/usr/lib/rpm/redhat redhat-hardened-*
	install -p -m 444 -t ${D}/usr/lib/rpm/redhat config.*
	install -p -m 755 -t ${D}/usr/lib/rpm/redhat dist.sh
	install -p -m 755 -t ${D}/usr/lib/rpm/redhat brp-*
	install -p -m 755 -t ${D}/usr/lib/rpm/redhat find-*

	mkdir -p ${D}/usr/libexec/rpm/macros.d
	install -p -m 644 -t ${D}/usr/libexec/rpm/macros.d macros.*

	mkdir -p ${D}/usr/libexec/rpm/fileattrs
	install -p -m 644 -t ${D}/usr/libexec/rpm/fileattrs *.attr

	mkdir -p ${D}/usr/libexec/rpm/lua/fedora/{rpm,srpm}
	install -p -m 644 -t ${D}/usr/libexec/rpm/lua/fedora common.lua
}
