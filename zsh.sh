#!/bin/bash
if ! type -t brew_package; then
  source "$HOME/dotfiles/functions.sh"
fi

# iterm2
cask_package iterm2
#TODO how did I miss the Solarized Dark theme
# Also need the Black fix, foreground color fix, etc

brew_package zsh
ln -sf "$dotfiles/zsh/zshrc" "$HOME/.zshrc"
if ! echo $SHELL | grep "\/zsh$" > /dev/null ; then
  chsh -s zsh
fi

brew_package zsh-syntax-highlighting
brew_package zsh-history-substring-search
#TODO this still appears to need the install.sh... :-(
git_repo "$HOME/.oh-my-zsh" "https://github.com/robbyrussell/oh-my-zsh.git"

#defaults read com.googlecode.iterm2 "New Bookmarks"
#defaults write com.googlecode.iterm2 "New Bookmarks" -dict-add "Normal Font" "RobotoMono 12"
#defaults write com.googlecode.iterm2 "New Bookmarks" -dict-add \
#  "Normal Font" "RobotoMonoForPowerline-Regular 12" \
#  "Custom Directory" "Recycle"


