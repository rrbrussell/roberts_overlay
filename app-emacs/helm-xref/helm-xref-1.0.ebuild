# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit elisp
DESCRIPTION="Helm interface for xref results"
HOMEPAGE="https://github.com/brotzeit/helm-xref"
SRC_URI="https://github.com/brotzeit/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

PATCHES=(
	"${FILESDIR}"/fix_1.0_released_as_0.5.patch
)

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"

SITEFILE="50${PN}-gentoo.el"

RDEPEND=">=app-editors/emacs-25.1:* >=app-emacs/helm-1.9.4"
