.PHONY: build netlify dev clean

HUGO := hugo
BIND := localhost

build: clean
	$(HUGO)

netlify: clean
	$(HUGO) --minify --environment production

dev: clean
	$(HUGO) server --buildDrafts --watch --bind=$(BIND)

clean:
	rm -rf public
	rm -rf resources/_gen
