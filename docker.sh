#!/usr/bin/env bash
if ! type -t brew_package; then
  source "$HOME/dotfiles/functions.sh"
fi

# Docker
cask_package docker-edge
cask_package kitematic
cask_package minikube
brew_package kubernetes-cli

etc=/Applications/Docker.app/Contents/Resources/etc
ln -sf $etc/docker.zsh-completion /usr/local/share/zsh/site-functions/_docker
ln -sf $etc/docker-machine.zsh-completion /usr/local/share/zsh/site-functions/_docker-machine
ln -sf $etc/docker-compose.zsh-completion /usr/local/share/zsh/site-functions/_docker-compose
