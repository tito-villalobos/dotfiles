#!/bin/bash

# exit if command fails
set -o errexit
# exit if unused variable is used
set -o nounset

dotfiles="$HOME/dotfiles"
source "$dotfiles/functions.sh"

# source brew.sh
# source fonts.sh
# source git.sh
source "$dotfiles/zsh.sh"

# Programming
source "$dotfiles/vim.sh"
source "$dotfiles/ruby.sh"
source "$dotfiles/clojure.sh"
brew_package cloc

# Common Apps
cask_package google-chrome
cask_package slack
cask_package spectacle

# inkscape & prereqs
cask_package xquartz
cask_package inkscape

# scroll reverser
cask_package scroll-reverser
defaults write com.pilotmoon.scroll-reverser ReverseTablet 0
defaults write com.pilotmoon.scroll-reverser ReverseTrackpad 0
defaults write com.pilotmoon.scroll-reverser SUEnableAutomaticChecks 0

# Games
cask_package league-of-legends
cask_package steam
