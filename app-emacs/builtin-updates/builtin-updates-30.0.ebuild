# Copyright 2026 Robert R. Russell
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="The Emacs built-in packages with post launch updates"
HOMEPAGE="https://wiki.gentoo.org/wiki/No_homepage"
LICENSE=no-source-code
RDEPEND="app-emacs/bind-key
	app-emacs/editorconfig
	app-emacs/eglot
	app-emacs/eldoc
	app-emacs/erc
	app-emacs/external-completion
	app-emacs/flymake
	app-emacs/idlwave
	app-emacs/jsonrpc
	app-emacs/let-alist
	app-emacs/map
	app-emacs/ntlm
	app-emacs/org-mode
	app-emacs/peg
	app-emacs/project
	app-emacs/python
	app-emacs/seq
	app-emacs/so-long
	app-emacs/soap-client
	app-emacs/svg
	app-emacs/track-changes
	app-emacs/tramp
	app-emacs/transient
	app-emacs/use-package
	app-emacs/verilog-mode
	app-emacs/which-key
	app-emacs/window-tool-bar
	app-emacs/xref"
KEYWORDS="~x86 ~amd64 ~aarch64"
SLOT="0"
