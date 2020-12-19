#!/bin/sh

mkdir -p $HOME/.config/nvim/
ln -sf $PWD/resources/init.vim $HOME/.config/nvim/init.vim
ln -sf $PWD/resources/zshrc $HOME/.zshrc
#ln -sf $PWD/resources/gitconfig $HOME/.gitconfig

