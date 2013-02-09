#!/bin/bash

if [ "$1" = "dry" ]; then
	OPTS="--dry-run"
fi

rsync -av $OPTS bash/bashrc ~/.bashrc
rsync -av $OPTS bash/bash.aliases ~/.bash.aliases
rsync -av $OPTS bash/bash.grc ~/.bash.grc

mkdir -p ~/bin/synced/
rsync -av $OPTS bin/* ~/bin/synced/

rsync -av $OPTS .gitconfig .hgrc .screenrc .vimrc .zshrc ~
