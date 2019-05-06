#!/bin/sh

# install themes
git clone https://github.com/chriskempson/base16-shell.git ~/base16-shell

# install zsh
if [ "$(uname -s)" = "Darwin" ]; then
  brew install zsh
fi
