#!/bin/bash

echo "===== setup ====="

ln -sf $PWD/resources/.vimrc $HOME/.vimrc
ln -sf $PWD/resources/.gitconfig $HOME/.gitconfig

mkdir -p $HOME/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim $HOME/.vim/bundle/neobundle.vim
