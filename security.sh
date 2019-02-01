#!/usr/bin/env bash
if ! type -t brew_package; then
  source "$HOME/dotfiles/functions.sh"
fi

cask_package owasp-zap
brew_package mitmproxy
