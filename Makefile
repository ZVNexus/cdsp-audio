PREFIX ?= /usr/
DATA_DIR ?= $(PREFIX)/share/

core:
	install -dDm0755 $(DESTDIR)/$(DATA_DIR)/pipewire/pipewire.conf.d/
	install -pm0644 conf/99-cdsp.conf $(DESTDIR)/$(DATA_DIR)/pipewire/pipewire.conf.d/99-cdsp.conf

install: core

uninstall:
	rm -rf $(DESTDIR)/$(DATA_DIR)/pipewire/pipewire.conf.d/99-cdsp.conf
