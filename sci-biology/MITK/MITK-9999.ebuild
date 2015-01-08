# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
inherit git-2 cmake-utils eutils

DESCRIPTION="The Medical Imaging Interaction Toolkit."
EGIT_REPO_URI="git://github.com/MITK/MITK.git"
HOMEPAGE="http://www.mitk.org/wiki"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="dev-qt/qtcore:4
	dev-qt/qtgui:4
	dev-qt/qtwebkit:4
	dev-qt/qttest:4
	dev-qt/designer:4
	dev-qt/linguist:4
	dev-qt/qtsql:4
	dev-qt/qtsvg:4
	dev-qt/qthelp:4
	dev-qt/qtopengl:4"
RDEPEND="${DEPEND}"

CMAKE_MIN_VERSION=2.8.9

src_install() {
	dodir /usr/share/MITK
	insinto /usr/share/MITK
	doins -r "${BUILD_DIR}"/*
	make_wrapper MITK "cd /usr/share/MITK/MITK-build/bin && ./MitkWorkbench"
}
