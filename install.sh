#!/bin/bash
source "$HOME/dotfiles/functions.sh"

source brew.sh
brew_package the_silver_searcher

source fonts.sh
source git.sh
source "$dotfiles/ssh.sh"

# Programming
source "$dotfiles/vim.sh"
source "$dotfiles/ruby.sh"
source "$dotfiles/clojure.sh"
brew_package cloc

# command line json parser/formatter
brew_package jq

# Docker
cask_package docker-edge

# Desktop Apps
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
