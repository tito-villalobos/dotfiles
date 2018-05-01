#!/bin/bash

cask_package macvim

# Core plugins
vim_plugin "nerdtree" "https://github.com/scrooloose/nerdtree.git"
vim_plugin "nerdtree-git-plugin" "https://github.com/Xuyuanp/nerdtree-git-plugin.git"
vim_plugin "ack_vim" "https://github.com/mileszs/ack.vim.git"
vim_plugin "ctrlp" "https://github.com/ctrlpvim/ctrlp.vim.git"
#vim_plugin "ale" "https://github.com/w0rp/ale.git"
vim_plugin "vim-airline" "https://github.com/vim-airline/vim-airline.git"

# Config
ln -fs "$dotfiles/vim/vimrc" "$HOME/.vimrc"
ln -fsn "$dotfiles/vim/config" "$HOME/.vim/config"
ln -fsn "$dotfiles/vim/colors" "$HOME/.vim/colors"

# Temp dir for macvim (specified in .vimrc)
mkdir -p ~/tmp
