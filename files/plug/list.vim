" ==================================================
" 插件列表
" ==================================================

" 在 $HOME/.config/Manual/vim-plugin 下安裝插件
call plug#begin('$HOME/.config/USER-PKG/Vim-Plugin')

" --------------------------------------------------
" 輕鬆編輯
" --------------------------------------------------

" 快速移动
Plug 'easymotion/vim-easymotion'
LoadScript plug/easy-edit/vim-easymotion.vim

" 多光标编辑
Plug 'terryma/vim-multiple-cursors'
LoadScript plug/easy-edit/vim-multiple-cursors.vim

" 配对符号快速编辑
Plug 'tpope/vim-surround'
LoadScript plug/easy-edit/vim-surround.vim

" --------------------------------------------------
" 界面定製
" --------------------------------------------------

" 配色
Plug 'morhetz/gruvbox'
LoadScript plug/interface/gruvbox.vim

" 缩进线
Plug 'yggdroot/indentline'
LoadScript plug/interface/indentline.vim

" 状态栏
Plug 'vim-airline/vim-airline'
LoadScript plug/interface/vim-airline.vim
Plug 'vim-airline/vim-airline-themes'
LoadScript plug/interface/vim-airline-themes.vim

" 字符图标
Plug 'ryanoasis/vim-devicons'
LoadScript plug/interface/vim-devicons.vim

" 欢迎界面
" Plug 'mhinz/vim-startify'
" LoadScript plug/interface/vim-startify.vim

" --------------------------------------------------
" 功能擴展
" --------------------------------------------------

" 文件搜索
Plug 'junegunn/fzf.vim',{'on':'Files'}
" Plug '/usr/bin/fzf'
LoadScript plug/function/fzf.vim.vim

" 撤销功能
Plug 'sjl/gundo.vim',{'on':'GundoToggle'}
LoadScript plug/function/gundo.vim.vim

" 文件浏览
Plug 'scrooloose/nerdtree',{'on':'NERDTreeToggle'}
LoadScript plug/function/nerdtree.vim

" tag 预览
Plug 'majutsushi/tagbar',{'on':'TagbarToggle'}
LoadScript plug/function/tagbar.vim

" git 插件
Plug 'tpope/vim-fugitive'
LoadScript plug/function/vim-fugitive.vim

" --------------------------------------------------
" 通用的編程語言的插件
" --------------------------------------------------

" 语法检查
Plug 'w0rp/ale', {'for':['sh','c','css','html','java','javascript','json','markdown','sql','typescrpt','vim','vue','xml','yaml']}
LoadScript plug/lang/ale.vim

" 彩虹括号
Plug 'luochen1990/rainbow', {'for':['markdown','lisp','haskell','vim','perl','stylus','css']}
LoadScript plug/lang/rainbow.vim

" 代码片段
Plug 'sirver/ultisnips', {'for':['html','javascript','markdown','php','python','ruby','scala']}
LoadScript plug/lang/ultisnips.vim

Plug 'Chiel92/vim-autoformat', {'for':['c','python','javascript','html','css','typescript','markdown','json','sh']} " 格式化
LoadScript plug/lang/vim-autoformat.vim

" 代碼片段
Plug 'honza/vim-snippets', {'for':['html','javascript','markdown','php','python','ruby','scala']}
LoadScript plug/lang/vim-snippets.vim

" VimL 中文文档
Plug 'yianwillis/vimcdoc'
LoadScript plug/lang/vimcdoc.vim

" 代码补全
"Plug 'Valloric/YouCompleteMe'
if has("win64")
    Plug 'snakeleon/YouCompleteMe-x64'
endif
if has("win32")
    Plug 'snakeleon/YouCompleteMe-x86'
endif
LoadScript plug/lang/YouCompleteMe.vim

" --------------------------------------------------
" Dot 语言
" --------------------------------------------------

" 编译 dot
Plug 'liuchengxu/graphviz.vim', {'for':'dot'}
LoadScript plug/language/dot/graphviz.vim.vim

" 编译、预览、补全、代码片段
Plug 'wannesm/wmgraphviz.vim', {'for':'dot'}
LoadScript plug/language/dot/wmgraphviz.vim.vim

" --------------------------------------------------
" HTML 语言
" --------------------------------------------------

" 代码生成
Plug 'mattn/emmet-vim', {'for':['html','css']}
LoadScript plug/language/html/emmet-vim.vim

" 自动关闭标签
Plug 'alvan/vim-closetag', {'for':['html','xml','xhtml','phtml']}
LoadScript plug/language/html/vim-closetag.vim

" --------------------------------------------------
" Markdown 语言
" --------------------------------------------------

" 实时预览
"Plug 'iamcco/markdown-preview.nvim', {'do':'cd app & yarn install', 'for':'markdown'}
Plug 'iamcco/markdown-preview.nvim', {'for':'markdown'}
LoadScript plug/language/markdown/markdown-preview.nvim.vim

" 语法扩展
Plug 'plasticboy/vim-markdown', {'for':'markdown'}
LoadScript plug/language/markdown/vim-markdown.vim

call plug#end()
