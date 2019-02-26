#!/bin/bash

# This script sets up the repository
for file in .bashrc .bash_profile .vimrc;
do
        # if a symlink already exists, remove it
        if [ -h ~/$file ]; then
                unlink ~/$file
        # if the file already exists, make sure the user is okay to delete it
        elif [ -f ~/$file ]; then       
		read -p "File $file already exists. Do you want to overwrite (y/n)? " -n 1 -r
                echo       
                if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    			[[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1
		fi
		rm ~/$file
	fi

	# create symbolic links in the home directory
	ln -sv ~/.vim/dotfiles/$file ~/$file
        sleep .6
done
