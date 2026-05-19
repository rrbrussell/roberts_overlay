# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit elisp

GIT_COMMIT="89cbd67a815f61e5001f19d64d6ec1771e867742"
DESCRIPTION="Display typographical ligatures in Emacs"
HOMEPAGE="https://github.com/mickynp/ligature.el"
SRC_URI="https://github.com/mickeynp/ligature.el/archive/${GIT_COMMIT}.zip -> ${P}.zip"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"

SITEFILE="50${PN}-gentoo.el"

NEED_EMACS="28.2"
DEPEND=">=app-editors/emacs-28.2-r20:*"

src_unpack() {
	unpack ${A}
	mv ligature.el-${GIT_COMMIT} ${P}
}
