#!/bin/bash

echo "Welcome to the cheat.sh setup."
while true; do
    read -p "Do you wish to install this program?" yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo "Cloning cheat.sh from https://github.com/chubin/cheat.sh.git"
git clone https://github.com/chubin/cheat.sh.git
chmod +x cheat.sh

Folder=~/alias_scripts
Filecheat=~/alias_scripts/cheatscript.sh

if test -f "$Folder"
then
	echo "Bash_scripte exists."
	if test -f "$Filecheat"
	then
		echo "cheatscript.sh already exists"
		echo "Aborting Installation.."
		exit 1
	else
		https://github.com/Jottzel/Install_cheat.sh
		mv cheatscript.sh "$Folder"
		chmod +x "$Filecheat"
	fi
fi

FILE=~/.bash_aliases
CHECKALIAS="cheatscript.sh"
ALIAS='alias cheat="~/alias_scripts/./cheatscript.sh"'

if test -f "$FILE"
then
	echo ""$FILE" exists."
	if grep -q "$CHECKALIAS" "$FILE" ; then
		echo ""$CHECKALIAS" already exists in "$FILE""
		echo "End of Installation Process"
		exit 1
	else
		echo "Append .bash_aliases ... "
		echo "$ALIAS" >> "$FILE"
	fi
else
	echo "Creating .bash_aliases"
	touch "$FILE"
	echo "$ALIAS" >> "$FILE"
fi

echo "Installation was sucessful."
exit 0
