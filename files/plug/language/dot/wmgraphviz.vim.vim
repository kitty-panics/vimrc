" ==================================================
" 名稱: wmgraphviz.vim
" 來源: 
" ==================================================

" 设置 dot 程序的路径
let g:WMGraphviz_dot = 'dot'

" 设置输出格式
let g:WMGraphviz_output = 'jpg'

" 设置查看器
let g:WMGraphviz_viewer = 'feh'

" 额外的 dot 选项
let g:WMGraphviz_shelloptions = ''

" 设置预览快捷键
map <F11> :GraphvizInteractive<CR>
