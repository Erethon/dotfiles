#!/bin/bash

mkdir -p ~/.config
mkdir -p ~/.vim/colors

cp .gitconfig ~
cp .tmux.conf ~
cp .vimrc ~
cp .bashrc ~
cp .bash_aliases ~
cp .config/ls_col ~/.config
cp .vim/colors/* ~/.vim/colors
cp .Xdefaults ~/.Xdefaults
cp .aliases ~/.aliases
cp .zshrc ~/.zshrc
