#!/bin/bash
if ! type -t brew_package; then
  source "$HOME/dotfiles/functions.sh"
fi

cask_package macvim

# Core plugins
vim_plugin "nerdtree" "https://github.com/scrooloose/nerdtree.git"
vim_plugin "nerdtree-git-plugin" "https://github.com/Xuyuanp/nerdtree-git-plugin.git"
vim_plugin "ack_vim" "https://github.com/mileszs/ack.vim.git"
vim_plugin "ctrlp" "https://github.com/ctrlpvim/ctrlp.vim.git"
vim_plugin "vim-airline" "https://github.com/vim-airline/vim-airline.git"
vim_plugin "tcomment" "https://github.com/tomtom/tcomment_vim"
vim_plugin "vim-polyglot" "https://github.com/sheerun/vim-polyglot"

# dir for macvim (specified in .vimrc)
mkdir -p ~/.vim-swap

# Config
ln -sf "$dotfiles/vim/vimrc" "$HOME/.vimrc"
ln -sfn "$dotfiles/vim/colors" "$HOME/.vim/colors"
ln -sfn "$dotfiles/vim/config" "$HOME/.vim/config"
ln -sfn "$dotfiles/vim/after" "$HOME/.vim/after"

