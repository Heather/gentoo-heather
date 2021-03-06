# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
EGIT_REPO_URI="https://kernel.googlesource.com/pub/scm/linux/kernel/git/torvalds/uemacs"

inherit git-2 toolchain-funcs

DESCRIPTION="uEmacs is an enhanced version of MicroEMACS"
HOMEPAGE="http://git.kernel.org/?p=editors/uemacs/uemacs.git;a=summary
	ftp://ftp.cs.helsinki.fi/pub/Software/Local/uEmacs-PK"
SRC_URI=""

LICENSE="free-noncomm"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="sys-libs/ncurses:*"
RDEPEND="${DEPEND}"

src_prepare() {
	sed -i -e "s:/usr/lib/:/usr/share/${PN}/:" epath.h || die
}

src_compile() {
	emake CC="$(tc-getCC)" CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}"
}

src_install() {
	dobin em
	insinto /usr/share/${PN}
	doins emacs.hlp
	newins emacs.rc .emacsrc
	dodoc README readme.39e emacs.ps UTF-8-demo.txt
}
