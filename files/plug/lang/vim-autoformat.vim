" ==================================================
" 名稱: vim-autoformat
" 來源: 
" ==================================================

" 绑定格式化代码的快捷键
noremap <F4> :Autoformat<CR>

" To disable the fallback to vim's indent file, retabbing and removing trailing whitespace
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
