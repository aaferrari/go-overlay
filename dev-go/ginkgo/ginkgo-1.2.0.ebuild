# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

GOLANG_PKG_IMPORTPATH="github.com/onsi"
GOLANG_PKG_ARCHIVEPREFIX="v"
GOLANG_PKG_IS_MULTIPLE=1
GOLANG_PKG_HAVE_TEST=1

inherit golang-single

DESCRIPTION="BDD Testing Framework for GoLang"
HOMEPAGE="http://onsi.github.io/ginkgo"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86 arm"