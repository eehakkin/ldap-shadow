EXEC_PREFIX	= $(PREFIX)
PREFIX		= /usr
BIN_DIR		= $(EXEC_PREFIX)/bin
ETC_DIR		= /etc
MAN_DIR		= $(PREFIX)/share/man
SBIN_DIR	= $(EXEC_PREFIX)/sbin

INSTALL		= install
INSTALL_INSTALL	= install
LN_S		= ln -s
LS		= ls
MV		= mv -f
RM		= rm -f
RM_R		= $(RM) -r
SED		= sed
XARGS		= xargs

all: FORCE
	$(MAKE) -- all-targets TARGETS="$$( \
		$(LS) -d -- *bin/ldap-*[!~] \
		| $(SED) \
			-n \
			-e 's|^bin/\(ldap-\([^-]*\)\)$$|bin/ldap-web-app-\2 man/man1/\1.1 man/man1/ldap-web-app-\2.1|p' \
			-e 's|^sbin/\(ldap-\([^-]*\)\)$$|sbin/ldap-web-app-\2 man/man8/\1.8 man/man8/ldap-web-app-\2.8|p' \
		| $(XARGS) \
		)"
all-targets: FORCE $(TARGETS) ;

install: FORCE
	$(INSTALL_INSTALL) -d -- \
		'$(DESTDIR)$(BIN_DIR)' \
		'$(DESTDIR)$(ETC_DIR)' \
		'$(DESTDIR)$(MAN_DIR)/man1' \
		'$(DESTDIR)$(MAN_DIR)/man8' \
		'$(DESTDIR)$(SBIN_DIR)'
	$(INSTALL_INSTALL) -- bin/*[!~] '$(DESTDIR)$(BIN_DIR)/'
	$(INSTALL_INSTALL) -m 644 -- etc/*[!~] '$(DESTDIR)$(ETC_DIR)/'
	$(INSTALL_INSTALL) -- man/man1/*[!~] '$(DESTDIR)$(MAN_DIR)/man1/'
	$(INSTALL_INSTALL) -- man/man8/*[!~] '$(DESTDIR)$(MAN_DIR)/man8/'
	$(INSTALL_INSTALL) -- sbin/*[!~] '$(DESTDIR)$(SBIN_DIR)/'

bin/ldap-web-app-% sbin/ldap-web-app-%:
	# $@
	$(LN_S) -- 'ldap-$*' '$@'

man/man1/%.1: bin/% bin/ldap-web-app-passwd
	# $@
	install -d -- man/man1
	'$<' --help=troff > '$@.tmp'
	$(MV) -- '$@.tmp' '$@'

man/man8/%.8: sbin/% bin/ldap-web-app-passwd
	# $@
	install -d -- man/man8
	'$<' --help=troff > '$@.tmp'
	$(MV) -- '$@.tmp' '$@'

clean: FORCE
	$(RM_R) -- *bin/ldap-web-app-* man

FORCE: FORCE/FORCE
FORCE/FORCE:
