# to force renew:  make -B img

.DELETE_ON_ERROR:

SHELL = /bin/bash

INFO_PATH=/usr/local/share/info/

CLS = cls_sqlite.fr

cls: $(CLS).texinfo
	makeinfo --document-language=fr $(CLS).texinfo
	gzip -f $(CLS).info*
	cp $(CLS).info*.gz -t $(INFO_PATH)
	rm -f $(CLS).info*.gz

all: cls

# clean directories
.PHONY : all clean
clean:
	rm -f *.info*
	rm -f *~
	rm -f *.gz
