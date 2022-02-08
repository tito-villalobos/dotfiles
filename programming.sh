#!/usr/bin/env bash
if ! type -t brew_package; then
  source "$HOME/dotfiles/functions.sh"
fi

# better than grep
brew_package the_silver_searcher

# code line counting
brew_package cloc

# json parser/formatter
brew_package jq

# way better curl
brew_package httpie

source "$dotfiles/git.sh"
source "$dotfiles/vim.sh"
source "$dotfiles/ruby.sh"
#source "$dotfiles/clojure.sh"
source "$dotfiles/docker.sh"
source "$dotfiles/terraform.sh"

