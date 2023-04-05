#!/bin/bash
# This removes the .vimrc file from thehome directory
rm ~/.vimrc 
# This line will remove the appended line freom the .bashrc file and replace it with nothing
sed -i 's/source \~\/\.dotfiles\/etc\/bashrc\_custom//g' ~/.bashrc
# This line removes the .TRASH directory
rm -r ~/.TRASH 
