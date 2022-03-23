prefix ?= /usr/local
bindir = $(prefix)/bin

build:
	swift build -c release --disable-sandbox

install: build
	install -d $(bindir)
	install .build/release/flip $(bindir)

uninstall:
	rm $(bindir)/flip

clean:
	rm -rf .build

.PHONY: build install uninstall clean
