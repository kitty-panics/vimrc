" ==================================================
" 名稱: graphviz.vim
" 來源: 
" ==================================================

" How to open the generated output file.
"
" If does not exist, graphviz.vim will automatically choose the right way depending on the platform.
let g:graphviz_viewer = 'open'

" Default output format. Default is 'pdf'.
let g:graphviz_output_format = 'pdf'

" Options passed on to dot. Default is ''.
let g:graphviz_shell_option = ''

" 按键映射
"
" 编译输出，Option: ps, pdf, png, jpg, gif, svg
map <F12> :Graphviz png
