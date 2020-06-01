" ==================================================
" 名稱: YouCompleteMe
" 來源: 
" ==================================================

" 触发标识符补全的最小输入字符
let g:ycm_min_num_of_chars_for_completion = 2

" 在弹出补全菜单后需要最小输入字符
let g:ycm_min_num_identifier_candidate_chars = 0

" 语义补全最大的建议数
let g:ycm_max_num_candidates = 50

" 标识符补全的最大建议数
let g:ycm_max_num_identifier_candidates = 30

" 启用两种补全 (标识符和语意补全)
let g:ycm_auto_trigger = 1

" 即使在注释中也启用补全
let g:ycm_complete_in_comments = 1

" 错误符号
let g:ycm_error_symbol = '>>'

" 警告符号
let g:ycm_warning_symbol = '--'

" 标识符补全启用在注释和字符串中收集标识符
let g:ycm_collect_identifiers_from_comments_and_strings = 1

" 收集 tags 里面的标识符
let g:ycm_collect_identifiers_from_tags_files = 1

" 收集关键字 (从 vim 的 filetype 里提取) 作为标识符
let g:ycm_seed_identifiers_with_syntax = 1

" 指定 ycm 的解释器
if has("win64")
    let g:ycm_server_python_interpreter = 'C:\MyProgram\Python\python3.exe'
elseif has("win32")
    let g:ycm_server_python_interpreter = 'C:\MyProgram\Python\python3.exe'
else
    let g:ycm_server_python_interpreter = '/usr/bin/python3'
endif

" ycm 和 ycmd 记录日志级别
let g:ycm_log_level = 'info'

" 指定全局 .ycm_extra_conf.py 文件路径
if has("win64")
    let g:ycm_global_ycm_extra_conf="$HOME\.vim-plug-data\YouCompleteMe-x64\python\.ycm_extra_conf.py"
elseif has("win32")
    let g:ycm_global_ycm_extra_conf="$HOME\.vim_plug-data\YouCompleteMe-x86\python\.ycm_extra_conf.py"
else
    let g:ycm_global_ycm_extra_conf="$HOME/.config/Manual/vim-plug-data/.ycm_extra_conf.py"
endif

" 不询问 .ycm_extra_conf.py 是否安全
let g:ycm_confirm_extra_conf = 0

" 设置触发语义补全的键值
let g:ycm_semantic_triggers =  {
    \ 'c': ['->', '.'],
    \ 'objc': ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
    \          're!\[.*\]\s'],
    \ 'ocaml': ['.', '#'],
    \ 'cpp,cuda,objcpp': ['->', '.', '::'],
    \ 'perl': ['->'],
    \ 'php': ['->', '::'],
    \ 'cs,d,elixir,go,groovy,java,javascript,julia,perl6,python,scala,typescript,vb': ['.'],
    \ 'ruby,rust': ['.', '::'],
    \ 'lua': ['.', ':'],
    \ 'erlang': [':'],
\ }
