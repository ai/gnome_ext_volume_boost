all: zip

.PHONY: install
install: zip
	gnome-extensions install -f *.zip

.PHONY: zip
zip:
	rm -f $(UUID).zip
	gnome-extensions pack --force .
