# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit git-r3

DESCRIPTION="Lemonbar with xft patch"
HOMEPAGE="https://github.com/LemonBoy/bar"
SRC_URI=""
EGIT_BRANCH="xft-port"
EGIT_REPO_URI="https://github.com/krypt-n/bar.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="
x11-libs/libxcb
x11-libs/libXft
"
RDEPEND="${DEPEND}"

src_prepare() {
	sed -i -e 's/-0s//' Makefile || die 'Sed faied'
}
