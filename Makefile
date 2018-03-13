all: compile

compile:
	gcc -Wfatal-errors -o sizeof sizeof.c -D TYPE="$(TYPE)"

install: source autocomplete binary
	
binary: sizeof
	cp sizeof /usr/bin/
	chmod +x /usr/bin/sizeof
	
autocomplete: sizeof_complete
	mkdir -p /etc/bash_completion.d
	cp sizeof_complete /etc/bash_completion.d/

source: sizeof.c
	mkdir -p /usr/share/sizeof
	cp sizeof.c /usr/share/sizeof/
