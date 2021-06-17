" ==================================================
" 名稱: emmet-vim
" 來源: 
" ==================================================

" Enable in different mode
let g:user_emmet_mode='a'    "enable all function in all mode.
"let g:user_emmet_mode='n'    "only enable normal mode functions.
"let g:user_emmet_mode='inv'  "enable all functions, which is equal to

" Enable just for html/css
let g:user_emmet_install_global = 0
"autocmd FileType html,css EmmetInstall

" Redefine trigger key
let g:user_emmet_leader_key='<C-Z>'
