" ==================================================
" 名稱: vim-multiple-cursors
" 來源: 
" ==================================================

" 不允许插件设置快捷键
let g:multi_cursor_use_default_mapping=0

" 映射快捷键（下一个、上一个、跳过、退出键）
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
