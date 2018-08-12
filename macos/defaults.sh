#!/bin/sh
# Set defaults for macOS

if [ "$(uname -s)" = "Darwin" ]; then
  echo ""
  echo "› System:"
  echo "  › Disable press-and-hold for keys in favor of key repeat"
  defaults write -g ApplePressAndHoldEnabled -bool false

  echo "  › Set a really fast key repeat"
  defaults write NSGlobalDomain KeyRepeat -int 2
  defaults write NSGlobalDomain InitialKeyRepeat -int 15
  echo "  › Disable Dashboard"
  defaults write com.apple.dashboard mcx-disabled -bool true

  echo "  › Set dark interface style"
  defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark"

  echo "  › Set graphite appearance"
  defaults write NSGlobalDomain AppleAquaColorVariant -int 6

  echo "  › Set graphite highlight color"
  defaults write NSGlobalDomain AppleHighlightColor -string "0.847059 0.847059 0.862745"

  echo "  › Show battery percent"
  defaults write com.apple.menuextra.battery ShowPercent -bool true

  echo "  › Require password immediately after sleep or screen saver begins"
  defaults write com.apple.screensaver askForPassword -int 1
  defaults write com.apple.screensaver askForPasswordDelay -int 0

  echo "  › Disable smart quotes and smart dashes as they're annoying when typing code"
  defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
  defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

  echo "  › Avoid the creation of .DS_Store files on network volumes"
  defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

  echo "  › Show the ~/Library folder"
  chflags nohidden ~/Library

  echo "  › Show the /Volumes folder"
  sudo chflags nohidden /Volumes
fi
