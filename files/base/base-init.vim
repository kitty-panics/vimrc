" ==================================================
" 基本的配置
" ==================================================

" --------------------------------------------------
" 未分類的設置項
" --------------------------------------------------

" 关闭 vi 兼容模式
set nocompatible

" 自动载入被修改的文件
set autoread

" 設置 BackSpace 键模式
set backspace=eol,start,indent

" 内建命令补全
set wildmenu

" 关闭自动换行
" set nowrap

" 设置 Leader 键为空格
let g:mapleader=' '

" 在插入模式中打开输入法
if has('vim')
    set iminsert=2
endif

" 与系统共享剪贴板
set clipboard=unnamed

" --------------------------------------------------
" 语法设置
" --------------------------------------------------

if has('syntax')  
    syntax enable 
    syntax on 
endif

" 高亮匹配的括号
set showmatch

" 如遇 Unicode 值大于 255 的文本，不必等到空格再折行
" set formatoptions+=m

" 合并两行中文时，不在中间加空格
set formatoptions+=B

" 含此符号不被换行分割
" set iskeyword+=_,$,@,%,#,-

" --------------------------------------------------
" 代码折叠設置
" --------------------------------------------------

if has('folding')
    " 允许代码折叠
    set foldenable

    " 代码折叠默认使用缩进
    set fdm=indent

    " 默认打开所有缩进
    set foldlevel=99
endif

" --------------------------------------------------
" 備份設置
" --------------------------------------------------

" 保存时备份
" set writebackup

" 禁用备份
set nobackup

" 备份文件地址，统一管理
" set backupdir=~/.cache/vim/tmp

" 备份文件扩展名
" set backupext=.bak

" 关闭交换文件
set noswapfile

" 禁用 undo 文件
set noundofile

" 创建目录，并且忽略可能出现的警告
" silent! call mkdir(expand('~/.cache/vim/tmp'), "p", 0755)

" --------------------------------------------------
" 缩进設置 (后期可以覆盖)
" --------------------------------------------------

" 允许 Vim 自带脚本根据文件类型自动设置缩进
if has('autocmd')
    filetype plugin indent on
endif

" 每层缩进的空格数
set shiftwidth=4

" 设置 Tab 宽度
set tabstop=4

" 设置 Tab 为空格
set expandtab

" 如果后面设置了 expandtab 那么展开 Tab 为多少字符
set softtabstop=4

" 自动缩进
set autoindent

" 智能缩进
" set smartindent

" 打开 C/C++ 语言缩进优化
set cindent

" 需要在 Python 里使用 Tab，需反注释下面行。否则 Vim 会在打开 py 文件时自动设置成空格缩进
augroup PythonTab
    au!
    au FileType python setlocal shiftwidth=4 tabstop=4 noexpandtab
augroup END

" --------------------------------------------------
" 搜索設置
" --------------------------------------------------

" 高亮搜索内容
set hlsearch

" 搜索時大小写不敏感
set ignorecase

" 智能搜索大小写判断，默认忽略大小写，除非搜索内容包含大写字母
set smartcase

" 启用实时搜索 (查找输入时动态增量显示查找结果)
set incsearch

" 禁止循环搜索
set nowrapscan

" --------------------------------------------------
" 编码格式
" --------------------------------------------------

" 腳本默認使用的编码
scriptencoding utf-8

if has('multi_byte')
    " 内部工作编码
    set encoding=utf-8

    " 文件默认编码
    set fileencoding=utf-8

    " 打开文件时自动尝试以下顺序的编码
    set fileencodings=ucs-bom,utf-8,gbk,gb18030,gb2312,cp936,big5,euc-jp,latin1
endif

" 文件换行符，默认使用 unix 换行符
set ffs=unix,dos,mac
