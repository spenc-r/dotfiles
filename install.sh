#!/bin/bash

dotfiles() {
    for f in $(ls -a)
    do
	mkdir -p "$HOME/olddotfiles"
        if [[ "$f" =~ ^\.[A-Za-z]+ ]] && [[ "$f" != ".git" ]]
        then
            rm -f "$HOME/olddotfiles/$f"
	    mv "$HOME/$f" "$HOME/olddotfiles/$f"
	    ln -s "$PWD/$f" "$HOME/$f"
	    echo "Sym linked $f"
        fi
    done
}

vimrc() {
    mkdir -p ~/.vim/pack/plugins/start
    git clone --depth=1 https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/pack/plugins/start/ctrlp
}

dotfiles
vimrc
