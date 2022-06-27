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

dotfiles
