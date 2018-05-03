#!/usr/bin/env bash
if ! type -t brew_package; then
  source "$HOME/dotfiles/functions.sh"
fi

brew_package git
ln -sf "$dotfiles/git/gitignore" "$HOME/.gitignore"

git config --global user.email "tito.villalobos.1@gmail.com"
git config --global user.name "Tito Villalobos"

git config --global alias.co checkout
git config --global alias.st status
git config --global alias.hard "reset --hard"
git config --global alias.amend "commit --amend"
