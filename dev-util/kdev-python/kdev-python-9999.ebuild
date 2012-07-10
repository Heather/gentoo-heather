# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit git-2 cmake-utils

EGIT_REPO_URI="git://anongit.kde.org/kdev-python"

DESCRIPTION="KDevelop plugin which provides Python language support."
HOMEPAGE="https://projects.kde.org/projects/playground/devtools/plugins/kdev-python"

LICENSE="GPL-2 LGPL-2"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-util/kdevelop
dev-util/kdevelop-pg-qt
>=dev-util/kdevplatform-1.3.60
dev-util/automoc"
RDEPEND="${DEPEND}"

#src_compile() {
    #sed -i 's|#!.*python$|&2|' python-src/Parser/asdl_c.py
    #cmake "../python" \
    #    -DCMAKE_SKIP_RPATH=ON \
    #    -DCMAKE_BUILD_TYPE=RELWITHDEBINFO \
    #    -DCMAKE_{SHARED,MODULE,EXE}_LINKER_FLAGS='-Wl,--no-undefined -Wl,--as-needed' \
    #    -DCMAKE_INSTALL_PREFIX=/usr
#    make parser
#    emake || die "emake failed"
#}
