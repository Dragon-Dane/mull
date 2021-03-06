set (CPACK_GENERATOR DEB)

set (CPACK_DEBIAN_PACKAGE_MAINTAINER "Alex Denisov <alex@lowlevelbits.org>")
set (CPACK_DEBIAN_PACKAGE_DESCRIPTION ${PROJECT_DESCRIPTION})

set (CPACK_DEBIAN_PACKAGE_DEPENDS "libz-dev, libsqlite3-dev, ncurses-dev, libstdc++6, libxml2-dev, uuid-dev")
