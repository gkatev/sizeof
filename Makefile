all: compile

compile:
	gcc -Wfatal-errors -o sizeof sizeof.c -D TYPE="$(TYPE)"

install: source autocomplete executable

source:
	mkdir -p /usr/share/sizeof
	cp sizeof.c /usr/share/sizeof/
	
autocomplete:
	mkdir -p /etc/bash_completion.d
	cp sizeof_complete /etc/bash_completion.d/

executable:
	cp sizeof.sh /usr/bin/sizeof
	chmod +x /usr/bin/sizeof

uninstall:
	rm -r /usr/share/sizeof
	rm /etc/bash_completion.d/sizeof_complete
	rm /usr/bin/sizeof
