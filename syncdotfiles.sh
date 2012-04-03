#!/bin/bash

rsync -av bash/bashrc ~/.bashrc
rsync -av bash/bash.aliases ~/.bash.aliases
rsync -av bash/bash.grc ~/.bash.grc

mkdir -p ~/bin/synced/
rsync -av bin/* ~/bin/synced/

rsync -av .gitconfig .hgrc .screenrc .vimrc ~