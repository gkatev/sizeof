#!/bin/bash

if [ -z "$*" ]; then
	echo "Usage: sizeof type_name"
	exit 1
fi

source="/usr/share/sizeof/sizeof.c"
binary=$(mktemp)

gcc -Wfatal-errors -o "$binary" "$source" -D TYPE="$*" \
	&& "$binary" && rm "$binary"
