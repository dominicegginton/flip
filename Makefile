build:
	swift build -c release --disable-sandbox

install: build
	install .build/release/flip /usr/local/bin/

uninstall:
	rm -rf /usr/local/bin/flip

clean:
	rm -rf .build

.PHONY: build install uninstall clean