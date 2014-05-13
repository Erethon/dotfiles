#!/bin/bash

mkdir -p ~/.config
mkdir -p ~/.vim/colors

cp .gitconfig ~
cp .vimrc ~
cp .bashrc ~
cp .bash_aliases ~
cp .config/ls_col ~/.config
cp .vim/colors/* ~/.vim/colors
