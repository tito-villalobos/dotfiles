#!/usr/bin/env bash
if ! type -t brew_package; then
  source "$HOME/dotfiles/functions.sh"
fi

brew_package awscli
brew_package tfenv
tfenv install 0.12.9
