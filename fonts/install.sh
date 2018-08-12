#!/bin/sh
if [ "$(uname -s)" = "Darwin" ]; then
  brew tap caskroom/fonts
  brew cask install font-source-code-pro
  brew cask install font-firacode-nerd-font
  brew cask install font-firacode-nerd-font-mono
fi
