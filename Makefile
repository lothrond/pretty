SOURCE := pretty

DESTDIR ?= /usr/local/bin

ifdef V
	Q :=
else
	Q := @
endif

install: $(SOURCE)
	@echo "installing..."
	$(Q)cp -v $(SOURCE) $(DESTDIR)
	$(Q)chmod 755 $(DESTDIR)/$(SOURCE)

remove: $(DESTDIR)/$(SOURCE)
	@echo "removing..."
	$(Q)rm -v $(DESTDIR)/$(SOURCE)
