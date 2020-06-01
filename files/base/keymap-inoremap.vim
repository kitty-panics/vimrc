" ==================================================
" 按鍵映射 - 插入模式
" ==================================================

" 返回普通模式
inoremap kj <esc>
"inoremap jk <esc>

" 使用 Emacs 鍵位
inoremap <c-a> <home>
inoremap <c-e> <end>
inoremap <c-d> <del>
inoremap <c-_> <c-k>

" 设置 Ctrl + HJKL 移动光标
inoremap <C-h> <left>
inoremap <C-j> <down>
inoremap <C-k> <up>
inoremap <C-l> <right>

" Alt + N 切换 Tab
inoremap <silent><m-1> <ESC>:tabn 1<cr>
inoremap <silent><m-2> <ESC>:tabn 2<cr>
inoremap <silent><m-3> <ESC>:tabn 3<cr>
inoremap <silent><m-4> <ESC>:tabn 4<cr>
inoremap <silent><m-5> <ESC>:tabn 5<cr>
inoremap <silent><m-6> <ESC>:tabn 6<cr>
inoremap <silent><m-7> <ESC>:tabn 7<cr>
inoremap <silent><m-8> <ESC>:tabn 8<cr>
inoremap <silent><m-9> <ESC>:tabn 9<cr>
inoremap <silent><m-0> <ESC>:tabn 10<cr>

" MacVim 允许 CMD + 数字键 切换标签
if has("gui_macvim")
    set macmeta
    inoremap <silent><d-1> <ESC>:tabn 1<cr>
    inoremap <silent><d-2> <ESC>:tabn 2<cr>
    inoremap <silent><d-3> <ESC>:tabn 3<cr>
    inoremap <silent><d-4> <ESC>:tabn 4<cr>
    inoremap <silent><d-5> <ESC>:tabn 5<cr>
    inoremap <silent><d-6> <ESC>:tabn 6<cr>
    inoremap <silent><d-7> <ESC>:tabn 7<cr>
    inoremap <silent><d-8> <ESC>:tabn 8<cr>
    inoremap <silent><d-9> <ESC>:tabn 9<cr>
    inoremap <silent><d-0> <ESC>:tabn 10<cr>
endif

" Alt + h/l 快速左右按单词移动
inoremap <m-h> <c-left>
inoremap <m-l> <c-right>

" Alt + j/k 逻辑跳转下一行/上一行 (按 wrap 逻辑换行进行跳转)
inoremap <m-j> <c-\><c-o>gj
inoremap <m-k> <c-\><c-o>gk

" Alt + y 删除到行末
inoremap <m-y> <c-\><c-o>d$

" 禁用方向鍵移動光標
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
