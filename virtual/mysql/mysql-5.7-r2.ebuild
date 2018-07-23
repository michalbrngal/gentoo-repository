# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Virtual for MySQL database server"
HOMEPAGE=""
SRC_URI=""

LICENSE=""
SLOT="0/20"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~mips ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86 ~x86-fbsd ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~x64-solaris ~x86-solaris"
IUSE="embedded static"

DEPEND=""
RDEPEND="
	|| (
		=dev-db/mariadb-10.3*[embedded?,server,static?]
		=dev-db/mariadb-10.2*[embedded?,server,static?]
		=dev-db/mysql-${PV}*[embedded?,server,static?]
		=dev-db/percona-server-${PV}*[embedded?,server,static?]
	)"
