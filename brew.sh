#!/bin/bash
if ! type -t brew_package; then
  source "$HOME/dotfiles/functions.sh"
fi

# install brew
printf "brew... "
if brew -h > /dev/null; then
  printf "updating... "
  brew update > /dev/null
  printf "done.\n"
else
  printf "installing..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  printf "#######################################\nDONE INSTALLING BREW.\n"
fi

# install cask (GUI programs)
brew tap caskroom/cask
# beta/alt versions of some casks (e.g. docker-edge, java8)
brew tap caskroom/versions

