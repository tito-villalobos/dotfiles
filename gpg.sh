#!/usr/bin/env bash
if ! type -t brew_package; then
  source "$HOME/dotfiles/functions.sh"
fi

brew_package gpg
gpg
chmod 600 "$HOME/.gnupg/*"
chmod 700 "$HOME/.gnupg"

brew_package pinentry-mac
echo "pinentry-program /usr/local/bin/pinentry-mac" >> ~/.gnupg/gpg-agent.conf
killall gpg-agent
