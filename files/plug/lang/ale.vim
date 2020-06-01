" ==================================================
" 名稱: ale
" 來源: 
" ==================================================

" 始终显示侧边状态栏
let g:ale_sign_column_always = 1

" 指定 error 与 warning 提示符号
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'

" 允许在airline上显示信息
let g:airline#extensions#ale#enabled = 1
"
" 用于标明 error 与 warning 的标识
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" 使用 ESLint 检查 Vue 文件
" Run both javascript and vue linters for vue files.
let b:ale_linter_aliases = ['javascript', 'vue']

" Select the eslint and vls linters.
let b:ale_linters = ['eslint', 'vls']

" 设置在error和warning信息中跳转的快捷键
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" 为特定的语言指定linter
let g:ale_linters = {
    \ 'sh'           : ['shellcheck'],
    \ 'c'            : ['clangd'],
    \ 'css'          : ['csslint'],
    \ 'html'         : ['htmlhint'],
    \ 'java'         : ['javac'],
    \ 'javascript'   : ['jshint'],
    \ 'json'         : ['jsonlint'],
    \ 'markdown'     : ['markdownlint'],
    \ 'sql'          : ['sqlint'],
    \ 'typescript'   : ['tsserver'],
    \ 'vim'          : ['vint'],
    \ 'vue'          : ['vls'],
    \ 'xml'          : ['xmllint'],
    \ 'yaml'         : [''],
\}
