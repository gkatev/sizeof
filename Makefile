all: compile

compile:
	gcc -Wfatal-errors -o sizeof sizeof.c -D TYPE="$(TYPE)"

install: source autocomplete binary

binary:
	cp sizeof /usr/bin/
	chmod +x /usr/bin/sizeof
	
autocomplete:
	mkdir -p /etc/bash_completion.d
	cp sizeof_complete /etc/bash_completion.d/

source:
	mkdir -p /usr/share/sizeof
	cp sizeof.c /usr/share/sizeof/
