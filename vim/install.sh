#!/bin/sh
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall </dev/tty
vim +PluginUpdate </dev/tty

if which nvim >/dev/null 2>&1; then
  mkdir -p ~/.config/nvim/
  ln -sf "$DOTFILES/vim/vimrc.symlink" ~/.config/nvim/init.vim
  nvim +PluginInstall </dev/tty
  nvim +PluginUpdate </dev/tty
fi
