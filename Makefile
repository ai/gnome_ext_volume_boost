UUID := $(shell cat metadata.json | jq -r .uuid)

all: zip

.PHONY: install
install: zip
	gnome-extensions install -f *.zip

.PHONY: uninstall
uninstall:
	rm -fr $(INSTDIR)

.PHONY: zip
zip:
	rm -f $(UUID).zip
	gnome-extensions pack .
