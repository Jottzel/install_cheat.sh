## Install script for cheat.sh

### Installation
+ clone install_cheat.sh to your git folder.
+ `chmod +x install_cheat.sh`
+ `./install_cheat.sh`
### What the script does
+ clones cheat.sh from the offical repo (https://github.com/chubin/cheat.sh)
+ creates a folder called alias_scripts in your HOME directory
+ creates a script within alias_scripts that modifies .bash_aliases and executes curl cheat.sh $1 whenever "cheat" is typed. 
+ promtps "Search: " if no parameter $1 was given

### Usage
In the command line simply type `$ cheat` or `$ cheat [your parameter]`   

**Example 1**: `$ cheat ls` shows information about the ls command.        
**Example 2**: `$ cheat python/func` shows information about python functions.      
**Example 3**: `$ cheat` prompts `Search:` and expects the command or functionality you are looking for.
