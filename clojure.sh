#!/bin/bash
if ! type -t brew_package; then
  source "$HOME/dotfiles/functions.sh"
fi

# clojure needs java 1.8.  It doesn't work with 1.9 or 1.10.
cask_package java8
brew_package clojure
brew_package leiningen

# Config
mkdir "$HOME/.lein"
ln -sf "$dotfiles/clojure/lein/profiles.clj" "$HOME/.lein/profiles.clj"

# vim plugins
vim_plugin "vim-clojure-static" "https://github.com/guns/vim-clojure-static.git"
vim_plugin "paredit" "https://github.com/vim-scripts/paredit.vim.git"
vim_plugin "rainbow_parenthesis" "https://github.com/kien/rainbow_parentheses.vim.git"
vim_plugin "vim-fireplace" "https://github.com/tpope/vim-fireplace.git"
vim_plugin "vim-fugitive" "https://github.com/tpope/vim-fugitive.git"
