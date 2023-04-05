#!/bin/bash
# These lines of code make sure that the operating system is linux and if it's not it dumps an error message into linuxsetup.log
UNAME=$(uname)
FILE="~/.vimrc"

if (($UNAME != "Linux")); then 
	echo "Error" >> linuxsetup.log
	exit
fi
# This line creates the .TRASH directory
mkdir -p ~/.TRASH
# These lines make sure the .vimrc file exists and if it does it renames is to .bup_vimrc and then sends a message to linuxsetup.log saying the name was changed
if [[ -f "$HOME/.vimrc"]]; then 
	mv ~/.vimrc ~/.bup_vimrc
	echo ".vimrc was renamed to .bup_vimrc" > linuxsetup.log
fi	
# This overwrites the contents of ./etc/vimrc to a file called .vimrc in the home directory
 cat etc/vimrc > ~/.vimrc
# This appends the message to the end of the .bashrc file 
echo source ~/.dotfiles/etc/bashrc_custom >> ~/.bashrc 
