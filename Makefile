.PHONY: info build build-production install uninstall clean

info:
	@echo -e '\033[1;32mFlip\033[0m'
	@echo -n 'Version: '
	@git describe --long | sed 's/\([^-]*-g\)/r\1/;s/-/./g'
	@echo  'Homepage: https://github.com/dominicegginton/flip'
	@echo 'Bugs/Issues: https://github.com/dominicegginton/flip/issues'
	@echo 'Maintainer: Dominic Egginton <dominic.egginton@gmail.com>'
	@echo

build: info
	@echo -e '\033[0;33mBuilding for development\033[0m'
	swift build

build-production: info
	@echo -e '\033[0;33mBuilding for production\033[0m'
	swift build -c release --disable-sandbox
	@echo

install: info build-production
	@echo -e '\033[0;34mInstalling\033[0m'
	mkdir -p ${DESTDIR}/usr/local/bin/
	install .build/release/flip ${DESTDIR}/usr/local/bin/flip

uninstall: info
	@echo -e '\033[0;31mUninstalling\033[0m'
	rm ${DESTDIR}/usr/local/bin/flip

clean: info
	@echo -e '\033[0;31mCleaning builds\033[0m'
	rm -rf .build