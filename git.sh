#!/usr/bin/env bash

brew_package git
ln -fs "$dotfiles/git/gitignore" "$HOME/.gitignore"

git config --global user.email "tito.villalobos.1@gmail.com"
git config --global user.name "Tito Villalobos"
