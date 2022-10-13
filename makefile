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
	\echo "Open in Firerfox/Librewolf: https://addons.mozilla.org/firefox/downloads/file/3616824/foxyproxy_standard-7.5.1.xpi"
	\echo
	\echo "And import option file!!"
	\echo
	\echo "Flagfox-options-Opera-Proxy.json"
	\echo
	\echo "librewolf https://addons.mozilla.org/en-US/firefox/addon/foxyproxy-standard/"

install:
	\cp  opera-vpn-network-proxy  $(DESTDIR)$(PREFIX)
	\cp  opera-vpn-network-proxy.desktop  /usr/share/applications/
	\chmod +x $(DESTDIR)$(PREFIX)/opera-vpn-network-proxy
	\echo "Open in Firerfox/Librewolf: https://addons.mozilla.org/firefox/downloads/file/3616824/foxyproxy_standard-7.5.1.xpi"
	\echo 
	\echo "And import option file!!"
	\echo
	\echo "Flagfox-options-Opera-Proxy.json"
	\echo
	\echo "librewolf https://addons.mozilla.org/en-US/firefox/addon/foxyproxy-standard/"

uninstall:
	\rm $(DESTDIR)$(PREFIX)/opera-vpn-network-proxy
	\rm /usr/share/applications/opera-vpn-network-proxy.desktop
