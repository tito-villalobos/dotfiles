#!/bin/bash
if ! type -t brew_package; then
  source "$HOME/dotfiles/functions.sh"
fi

if [ ! -f "$HOME/.ssh/id_rsa" ]; then
  printf "Creating SSH Key:"
  ssh-keygen -f "$HOME/.ssh/id_rsa" -t rsa -b 4096
fi

# add passphrase to the keychain
ssh-add -K ~/.ssh/id_rsa

# configure ssh to always use keychain
ln -sf "$dotfiles/ssh/config" "$HOME/.ssh/config"
