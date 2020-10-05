#!/usr/bin/env bash
# this script does depend on ~/.bin existing. if you're me well,
# it'll be there :p
executables=$(find . -maxdepth 1 -perm -111 -type f | sed 's/\.\/setup.sh//g')
for file in $executables; do
	ln -s "$(pwd)/$file" $HOME/.bin/$file
done
