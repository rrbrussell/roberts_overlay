# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit elisp
GIT_COMMIT="056bb16b5f69137218613b7558b477f6b21f22be"
DESCRIPTION="lsp-mode for helm"
HOMEPAGE="https://github.com/emacs-lsn/helm-lsp"
SRC_URI="https://github.com/emacs-lsp/${PN}/archive/${GIT_COMMIT}.zip -> ${P}.zip"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"

SITEFILE="50${PN}-gentoo.el"
#ELISP_TEXINFO="doc/ledger-mode.texi"
#BYTECOMPFLAGS+=" -l ledger-regex.el"

#RDEPEND="!<app-office/ledger-3.1.2[emacs(-)]"
#BDEPEND="sys-apps/texinfo"
