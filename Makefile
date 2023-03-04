VERSION=1.0

all:
       true

install:
               echo "* Copying module into /usr/src..."
               install -dm755 $(DESTDIR)/usr/src/xpad-noone
               cp -r xpad-noone $(DESTDIR)/usr/src/
               ln -sf /usr/src/xpad-noone $(DESTDIR)/usr/src/xpad-noone-"${VERSION}"
               install -d $(DESTDIR)/etc/modules-load.d
               cp -r modules-load-d-xpad-noone.conf  $(DESTDIR)/etc/modules-load.d/xpad-noone.conf
