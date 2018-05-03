#!/bin/bash
if ! type -t brew_package; then
  source "$HOME/dotfiles/functions.sh"
fi

brew_package rbenv
rbenv install -s 2.5.0
rbenv install -s 2.5.1

# Vim plugins
vim_plugin "vim-ruby" "https://github.com/vim-ruby/vim-ruby.git"
vim_plugin "endwise" "https://github.com/tpope/vim-endwise.git"
