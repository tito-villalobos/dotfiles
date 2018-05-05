#!/usr/bin/env bash
if ! type -t brew_package; then
  source "$HOME/dotfiles/functions.sh"
fi

brew_package gpg
gpg
chmod 600 "$HOME/.gnupg/*"
chmod 700 "$HOME/.gnupg"
