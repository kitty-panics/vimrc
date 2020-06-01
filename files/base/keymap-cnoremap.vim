" ==================================================
" 按鍵映射 - 命令模式
" ==================================================

" 快速移動光標 (Emacs 鍵位)
cnoremap <c-h> <left>
cnoremap <c-j> <down>
cnoremap <c-k> <up>
cnoremap <c-l> <right>
cnoremap <c-a> <home>
cnoremap <c-e> <end>
cnoremap <c-f> <c-d>
cnoremap <c-b> <left>
cnoremap <c-d> <del>
cnoremap <c-_> <c-k>

" Alt + h/l 快速左右按单词移动
cnoremap <m-h> <c-left>
cnoremap <m-l> <c-right>

" 禁用方向鍵移動光標
cnoremap <Up> <NOP>
cnoremap <Down> <NOP>
cnoremap <Left> <NOP>
cnoremap <Right> <NOP>
