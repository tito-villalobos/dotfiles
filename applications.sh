#!/usr/bin/env bash
if ! type -t brew_package; then
  source "$HOME/dotfiles/functions.sh"
fi

cask_package google-chrome
cask_package slack
cask_package spectacle

# scroll reverser
cask_package scroll-reverser
defaults write com.pilotmoon.scroll-reverser ReverseTablet 0
defaults write com.pilotmoon.scroll-reverser ReverseTrackpad 0
defaults write com.pilotmoon.scroll-reverser SUEnableAutomaticChecks 0

# inkscape & prereqs
cask_package xquartz
cask_package inkscape

# Games
cask_package league-of-legends
cask_package steam

