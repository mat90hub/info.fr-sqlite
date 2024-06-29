# to force renew:  make -B img

.DELETE_ON_ERROR:

SHELL = /bin/bash

INFO_PATH=/usr/local/share/info/

CLS = cls_sqlite.fr


info: $(CLS).texinfo
	makeinfo --document-language=fr $(CLS).texinfo
	gzip -f $(CLS).info*
	cp $(CLS).info*.gz -t $(INFO_PATH)
	rm -f $(CLS).info*.gz


pdf: $(CLS).texinfo
	texi2pdf --output=pdf/$(CLS).pdf --clean \
                 $(CLS).texinfo

html: $(CLS).texinfo
	texi2any --html --no-split \
                 --output=html/index.html \
                 --document-language=fr \
                 $(CLS).texinfo

html2: $(CLS).texinfo
	texi2any --html --no-split \
                 --css-include=html/css/sqlite.css \
                 --no-headers \
                 --output=html/index.html \
                 --document-language=fr \
                 $(CLS).texinfo

all: info


# clean directories
.PHONY : all clean
clean:
	rm -f *.info*
	rm -f *~
	rm -f *.gz
