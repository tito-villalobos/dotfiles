" Copied from old EdgeCase VimConfig
" https://github.com/edgecase/vim-config/blob/master/.vim/common_config/01_plugin_config.vim
nnoremap <leader>b :<C-U>CtrlPBuffer<CR>
nnoremap <leader>t :<C-U>CtrlP<CR>
nnoremap <leader>T :<C-U>CtrlPTag<CR>

" respect the .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
