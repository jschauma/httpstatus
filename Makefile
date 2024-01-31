NAME=httpstatus
PREFIX?=/usr/local

all: help

help:
	@echo "The following targets are available:"
	@echo "install      install just the 'httpstatus.7' manual page into ${PREFIX}"
	@echo "install-all  install the 'httpstatus.7' manual page into ${PREFIX},"
	@echo "             then symlink each http status code so that you can run"
	@echo "             e.g., 'man http:404'."
	@echo "txt          generate a text version of the manual page"
	@echo "pdf          generate a PDF version of the manual page"

install:
	mkdir -p ${PREFIX}/share/man/man7/
	install -c -m 444 ${NAME}.7 ${PREFIX}/share/man/man7/${NAME}.7

install-all: install
	for c in $$(awk '/^.It [0-9][0-9]/ { print $$2 }' httpstatus.7); do	\
		ln -s ${NAME}.7 ${PREFIX}/share/man/man7/http:$$c.7;	\
	done

txt: ${NAME}.7.txt

${NAME}.7.txt: ${NAME}.7
	groff -Tascii -mandoc $? | col -b >$@

pdf: ${NAME}.7.pdf

${NAME}.7.pdf: ${NAME}.7.ps
	ps2pdf $?
	rm $?

${NAME}.7.ps: ${NAME}.7
	groff -man -Tps $? > $@

clean:
	rm -f ${NAME}.7.txt ${NAME}.7.pdf
