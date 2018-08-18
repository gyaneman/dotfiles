#!/usr/bin/zsh

ln -sf $PWD/resources/vimrc $HOME/.vimrc
ln -sf $PWD/resources/zshrc $HOME/.zshrc
ln -sf $PWD/resources/gitconfig $HOME/.gitconfig

mkdir -p $HOME/.vim/bundle

if [ ! -d "$HOME/.vim/bundle/neobundle.vim" ] ; then
  git clone https://github.com/Shougo/neobundle.vim $HOME/.vim/bundle/neobundle.vim
fi
