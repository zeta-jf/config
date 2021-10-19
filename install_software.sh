#!/bin/bash

read -p "which package manager should I use? " pm

while read software
do
	sudo $pm install -y $software 
	echo "finished software $software"
done < software.txt
		
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
