#!/bin/bash
if ! type -t brew_package; then
  source "$HOME/dotfiles/functions.sh"
fi

brew tap caskroom/fonts

cask_package font-roboto
cask_package font-roboto-mono
cask_package font-roboto-mono-for-powerline
