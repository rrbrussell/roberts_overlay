# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit elisp

DESCRIPTION="Minor mode for Emacs that deals with parens pairs and tries to be smart about it."
HOMEPAGE="https://github.com/Fuco1/smartparens"
SRC_URI="https://github.com/Fuco1/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"

#PATCHES=( "${FILESDIR}"/${P}-emacs-28.patch )
SITEFILE="50${PN}-gentoo.el"
#ELISP_TEXINFO="doc/ledger-mode.texi"
#BYTECOMPFLAGS+=" -l ledger-regex.el"

#RDEPEND="!<app-office/ledger-3.1.2[emacs(-)]"
#BDEPEND="sys-apps/texinfo"
