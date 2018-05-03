#!/bin/bash

# exit if command fails
set -o errexit
# exit if unused variable is used
set -o nounset

dotfiles="$HOME/dotfiles"

BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
LIME_YELLOW=$(tput setaf 190)
POWDER_BLUE=$(tput setaf 153)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
BOLD=$(tput bold)
NORMAL=$(tput sgr0)
BLINK=$(tput blink)
REVERSE=$(tput smso)
UNDERLINE=$(tput smul)

function do_brew()
{
  printf "${BOLD}${BLUE}${2}${NORMAL}... "
  if brew $1 info "$2" | grep "Not installed" > /dev/null; then
    printf "installing... "
    brew $1 install "$2" > /dev/null
    printf "done.\n"
  elif brew $1 outdated | grep "$2" > /dev/null; then
    printf "upgrading... "
    brew $1 upgrade "$2" > /dev/null
    printf "done.\n"
  else
    printf "already at latest version.\n"
  fi
}

function brew_package()
{
  do_brew "" $1
}

function cask_package()
{
  do_brew cask $1
}

# usage: git_repo $HOME/local/dir https://github.com/foo/bar.git
function git_repo()
{
  local filename=$(basename $1)
  printf "${BOLD}${BLUE}${filename}${NORMAL}... "
  if [ -d "$1" ]; then
    printf "updating... "
    git -C "$1" fetch --depth 1 > /dev/null
    git -C "$1" reset --hard origin/master > /dev/null
  else
    printf "cloning... "
    git clone --depth 1 "$2" "$1" > /dev/null
  fi
}

# usage: vim_plugin https://github.com/foo/bar.git plugin-name
function vim_plugin()
{
  local plugins_dir="$HOME/.vim/pack/my-plugins/start"
  mkdir -p "$plugins_dir"
  local plugin_dir="$plugins_dir/$1"
  git_repo "$plugin_dir" "$2"
}
