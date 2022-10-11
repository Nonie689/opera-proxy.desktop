##
## Makefile
##
## Licensed under MIT License

# PREFIX is environment variable, but if it is not set, then set default value
ifeq ($(PREFIX),)
    PREFIX := /usr/bin/
endif

all:
	\cp  opera-vpn-network-proxy  $(DESTDIR)$(PREFIX)
	\cp  opera-vpn-network-proxy.desktop  /usr/share/applications/
	\chmod +x $(DESTDIR)$(PREFIX)/opera-vpn-network-proxy

install:
	\cp  opera-vpn-network-proxy  $(DESTDIR)$(PREFIX)
	\cp  opera-vpn-network-proxy.desktop  /usr/share/applications/
	\chmod +x $(DESTDIR)$(PREFIX)/opera-vpn-network-proxy

uninstall:
	\rm $(DESTDIR)$(PREFIX)/opera-vpn-network-proxy
	\rm /usr/share/applications/opera-vpn-network-proxy.desktop
