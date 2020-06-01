" ==================================================
" 名稱: nerdtree
" 來源: 
" ==================================================

" 设置打开 nerdtree 的快捷键
map <F1> :NERDTreeToggle<CR>

" 当 nerdtree 是唯一窗口，就关闭 Vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" 设置文件夹的折叠箭头符号
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'

" 显示隐藏文件
let g:NERDTreeShowHidden= 1 

" 显示行号
let g:NERDTreeShowLineNumbers = 1

" 删除 / 重命名时删除 buffer
let g:NERDTreeAutoDeleteBuffer = 1

" 不显示帮助信息
let g:NERDTreeMinimalUI = 1
