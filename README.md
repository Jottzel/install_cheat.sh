## Install script for cheat.sh

### Installation     
**Inside your git folder do:**
+ `git clone https://github.com/Jottzel/install_cheat.sh.git` 
+ `cd install_cheat.sh && chmod +x install_cheat.sh`
+ `./install_cheat.sh`
### What the script does
+ clones [cheat.sh](https://github.com/chubin/cheat.sh) from the offical repository
+ creates a folder called alias_scripts in your HOME directory
+ creates a script within alias_scripts that modifies .bash_aliases and executes curl cheat.sh $1 whenever "cheat" is typed. 
+ promtps "Search: " if no parameter $1 was given

### Usage
In the command line simply type `$ cheat` or `$ cheat [your parameter]`   

**Example 1**: `$ cheat ls` shows information about the ls command.        
**Example 2**: `$ cheat python/func` shows information about python functions.      
**Example 3**: `$ cheat` prompts `Search:` and expects the command or functionality you are looking for.   

For the cheat.sh main page execute `curl cheat.sh`   

Make sure to follow https://github.com/chubin for any updates on cheat.sh.

