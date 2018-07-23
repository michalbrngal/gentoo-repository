# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/www-apache/mod_geoip2/mod_geoip2-1.2.7-r1.ebuild,v 1.1 2013/01/03 19:15:55 pacho Exp $

inherit apache-module eutils

MY_P="${PN}-${PV}"
MY_PN="${PN/2}"

DESCRIPTION="Apache 2.x module for finding the country and city that a web request originated from"
HOMEPAGE="http://www.maxmind.com/app/mod_geoip"
SRC_URI="https://github.com/maxmind/geoip-api-mod_geoip2/archive/${PV}.tar.gz"
LICENSE="Apache-1.1"

KEYWORDS="~x86 ~amd64"
IUSE=""
SLOT="0"

DEPEND=">=dev-libs/geoip-1.4.8"
RDEPEND="${DEPEND}"

S="${WORKDIR}/geoip-api-${MY_P}"

# See apache-module.eclass for more information.
APACHE2_MOD_CONF="30_${PN}"
APACHE2_MOD_FILE="${S}/.libs/${MY_PN}.so"
APXS2_ARGS="-l GeoIP -c ${MY_PN}.c"
DOCFILES="INSTALL README README.php Changes"

need_apache2
