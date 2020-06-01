" ==================================================
" 按鍵映射 - 普通模式
" ==================================================

" 簡化 ;/L/H 快捷鍵
noremap ; :
noremap L $
noremap H ^

" 移動時光標始終居中
noremap j jzz
noremap k kzz
noremap G Gzz

" 设置 Ctrl + HJKL 移动光标
noremap <C-h> <left>
noremap <C-j> <down>
noremap <C-k> <up>
noremap <C-l> <right>

" Leader + 数字键 切换 Tab
noremap <silent><leader>1 1gt<cr>
noremap <silent><leader>2 2gt<cr>
noremap <silent><leader>3 3gt<cr>
noremap <silent><leader>4 4gt<cr>
noremap <silent><leader>5 5gt<cr>
noremap <silent><leader>6 6gt<cr>
noremap <silent><leader>7 7gt<cr>
noremap <silent><leader>8 8gt<cr>
noremap <silent><leader>9 9gt<cr>
noremap <silent><leader>0 10gt<cr>

" Alt + N 切换 Tab
noremap <silent><m-1> :tabn 1<cr>
noremap <silent><m-2> :tabn 2<cr>
noremap <silent><m-3> :tabn 3<cr>
noremap <silent><m-4> :tabn 4<cr>
noremap <silent><m-5> :tabn 5<cr>
noremap <silent><m-6> :tabn 6<cr>
noremap <silent><m-7> :tabn 7<cr>
noremap <silent><m-8> :tabn 8<cr>
noremap <silent><m-9> :tabn 9<cr>
noremap <silent><m-0> :tabn 10<cr>

" MacVim 允许 CMD + 数字键 切换标签
if has("gui_macvim")
    set macmeta
    noremap <silent><d-1> :tabn 1<cr>
    noremap <silent><d-2> :tabn 2<cr>
    noremap <silent><d-3> :tabn 3<cr>
    noremap <silent><d-4> :tabn 4<cr>
    noremap <silent><d-5> :tabn 5<cr>
    noremap <silent><d-6> :tabn 6<cr>
    noremap <silent><d-7> :tabn 7<cr>
    noremap <silent><d-8> :tabn 8<cr>
    noremap <silent><d-9> :tabn 9<cr>
    noremap <silent><d-0> :tabn 10<cr>
endif

" 切換 buffer 快捷鍵
noremap <silent> <leader>bn :bn<cr>
noremap <silent> <leader>bp :bp<cr>

" Tab: 创建, 关闭, 上一个, 下一个
" 另: 还可以使用原生的 Ctrl + PageUp, Ctrl + PageDown 来切换标签
noremap <silent> <leader>tc :tabnew<cr>
noremap <silent> <leader>tq :tabclose<cr>
noremap <silent> <leader>tn :tabnext<cr>
noremap <silent> <leader>tp :tabprev<cr>
noremap <silent> <leader>to :tabonly<cr>

" Tab: 左移, 右移

" 左移 Tab
function! Tab_MoveLeft()
    let l:tabnr = tabpagenr() - 2
    if l:tabnr >= 0
        exec 'tabmove '.l:tabnr
    endif
endfunc

noremap <silent><leader>tl :call Tab_MoveLeft()<cr>
noremap <silent><m-left> :call Tab_MoveLeft()<cr>

" 右移 Tab
function! Tab_MoveRight()
    let l:tabnr = tabpagenr() + 1
    if l:tabnr <= tabpagenr('$')
        exec 'tabmove '.l:tabnr
    endif
endfunc

noremap <silent><leader>tr :call Tab_MoveRight()<cr>
noremap <silent><m-right> :call Tab_MoveRight()<cr>

" Alt + h/l 快速左右按单词移动
noremap <m-h> b
noremap <m-l> w

" Alt + j/k 逻辑跳转下一行/上一行 (按 wrap 逻辑换行进行跳转)
noremap <m-j> gj
noremap <m-k> gk

" Alt + y 删除到行末
noremap <m-y> d$

" 禁用方向鍵移動光標
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
