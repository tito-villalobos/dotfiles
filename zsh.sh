#!/bin/bash
if ! type -t brew_package; then
  source "$HOME/dotfiles/functions.sh"
fi

brew_package zsh
ln -sf "$dotfiles/zsh/zshrc" "$HOME/.zshrc"
if ! echo $SHELL | grep "\/zsh$" > /dev/null ; then
  chsh -s zsh
fi

brew_package zsh-syntax-highlighting
brew_package zsh-history-substring-search
git_repo "$HOME/.oh-my-zsh" "https://github.com/robbyrussell/oh-my-zsh.git"

# iterm2
cask_package iterm2
#defaults read com.googlecode.iterm2 "New Bookmarks"
#defaults write com.googlecode.iterm2 "New Bookmarks" -dict-add "Normal Font" "RobotoMono 12"
#defaults write com.googlecode.iterm2 "New Bookmarks" -dict-add \
#  "Normal Font" "RobotoMonoForPowerline-Regular 12" \
#  "Custom Directory" "Recycle"


