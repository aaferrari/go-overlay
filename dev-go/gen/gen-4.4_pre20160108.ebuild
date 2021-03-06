# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

GOLANG_PKG_IMPORTPATH="github.com/clipperhouse"
GOLANG_PKG_VERSION="a964fea0946e9883fdcd13ea7af1507638a6679d"
GOLANG_PKG_HAVE_TEST=1

GOLANG_PKG_DEPENDENCIES=(
	"github.com/clipperhouse/fsnotify:73e10d3"
	"github.com/clipperhouse/slice:3ae82e0"
	"github.com/clipperhouse/stringer:e6cc61d"
	"github.com/clipperhouse/typewriter:e469540"
	"github.com/golang/tools:f7268ab -> golang.org/x"
)

inherit golang-single

DESCRIPTION="Type-driven code generation for GoLang"
HOMEPAGE="http://clipperhouse.github.io/gen/"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86 arm"

src_test() {
	if has sandbox $FEATURES && has network-sandbox $FEATURES; then
		eerror "Some tests require 'network-sandbox' to be disabled in FEATURES."
	fi

	golang-single_src_test
}
