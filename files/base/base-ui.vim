" ==================================================
" 外观样式
" ==================================================

" --------------------------------------------------
" 顯示設置
" --------------------------------------------------

" 显示行号
set number

" 使用相对行号
set relativenumber

" 總是显示状态栏
set laststatus=2

" 总是显示侧边栏 (用于显示 mark/gitdiff/诊断信息)
set signcolumn=yes

" 总是显示标签栏
set showtabline=2

" 底部显示命令行
set showcmd

" 设置命令行的高度为 2
set cmdheight=2

" 高亮光标行
set cursorline

" 高亮光标列
set cursorcolumn

" 状态栏显示光标坐标
set ruler

" 顯示當前模式
" set showmode

" 延迟绘制 (提升性能)
" set lazyredraw

" 水平切割窗口时，默认在右边显示新窗口
set splitright

" 设置分割线为空白
set fillchars=vert:\ 

" --------------------------------------------------
" 更改样式
" 更清晰的错误标注：默认一片红色背景，语法高亮都被搞没了
" 只显示红色或者蓝色下划线或者波浪线
" --------------------------------------------------

hi! clear SpellBad
hi! clear SpellCap
hi! clear SpellRare
hi! clear SpellLocal
if has('gui_running')
    hi! SpellBad gui=undercurl guisp=red
    hi! SpellCap gui=undercurl guisp=blue
    hi! SpellRare gui=undercurl guisp=magenta
    hi! SpellRare gui=undercurl guisp=cyan
else
    hi! SpellBad term=standout ctermfg=1 term=underline cterm=underline
    hi! SpellCap term=underline cterm=underline
    hi! SpellRare term=underline cterm=underline
    hi! SpellLocal term=underline cterm=underline
endif

" 去掉 sign column 的白色背景
hi! SignColumn guibg=NONE ctermbg=NONE

" --------------------------------------------------
" quickfix 设置，隐藏行号
" --------------------------------------------------

augroup VimInitStyle
    au!
    au FileType qf setlocal nonumber
augroup END
