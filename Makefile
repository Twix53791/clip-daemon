PREFIX ?= /usr/local
BINPREFIX = $(DESTDIR)$(PREFIX)/bin

x11_bsd_flags = -I/usr/X11R6/include -L/usr/X11R6/lib

all:
	${CC} ${CFLAGS} ${LDFLAGS} clipnotify.c -o clipnotify $(x11_bsd_flags) -lX11 -lXfixes

install: all
	mkdir -p ${BINPREFIX}
	cp -f clipnotify ${BINPREFIX}
	cp -f clip-daemon ${BINPREFIX}
	chmod 755 ${BINPREFIX}/clipnotify
	chmod 755 ${BINPREFIX}/clip-daemon

uninstall:
	rm -f ${BINPREFIX}/clipnotify
	rm -f ${BINPREFIX}/clip-daemon

clean:
	rm -f *.o *~ clipnotify

.PHONY: install uninstall
