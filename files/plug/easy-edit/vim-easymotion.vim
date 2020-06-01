" ==================================================
" 名稱: vim-easymotion
" 來源: 
" ==================================================

" 禁用默认映射
let g:EasyMotion_do_mapping = 1

" 不区分大小写
let g:EasyMotion_smartcase = 1

" 配置移动快捷键
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
