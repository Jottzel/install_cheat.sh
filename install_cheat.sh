#!/bin/bash
#
# Set an alias for curl cheat.sh

echo "Welcome to the cheat.sh setup."
while true; do
    read -p "Do you wish to set an alias for curl cheat.sh?" yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

Folder=~/alias_scripts
Filecheat=~/alias_scripts/cheatscript.sh

if test -f "$Folder"
then
	echo "alias_scripts exists."

	if test -f "$Filecheat"

	then
		echo "cheatscript.sh already exists"
		echo "Aborting Installation.."
		exit 1
	else
		echo "Cloning cheatalias.sh from https://github.com/Jottzel/cheatalias.sh.git"
	        git clone https://github.com/Jottzel/cheatalias.sh.git	
       		mv cheatalias.sh/cheatscript.sh "$Folder"
        	chmod +x "$Filecheat"
	fi
else
	mkdir "$Folder"
	echo "Cloning cheatalias.sh from https://github.com/Jottzel/cheatalias.sh.git"
	git clone https://github.com/Jottzel/cheatalias.sh.git
	mv cheatalias.sh/cheatscript.sh "$Folder"
	chmod +x "$Filecheat"
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
echo "Restart your terminal to have the changes become active."
exit 0
