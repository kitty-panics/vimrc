" ==================================================
" 對一些設置進行修補
" ==================================================

" --------------------------------------------------
" 文件搜索和补全时忽略以下的扩展名
" --------------------------------------------------

set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.pyc,.pyo,.egg-info,.class

set wildignore=*.o,*.obj,*~,*.exe,*.a,*.pdb,*.lib
set wildignore+=*.so,*.dll,*.swp,*.egg,*.jar,*.class,*.pyc,*.pyo,*.bin,*.dex
set wildignore+=*.zip,*.7z,*.rar,*.gz,*.tar,*.gzip,*.bz2,*.tgz,*.xz
set wildignore+=*DS_Store*,*.ipch
set wildignore+=*.gem
set wildignore+=*.png,*.jpg,*.gif,*.bmp,*.tga,*.pcx,*.ppm,*.img,*.iso
set wildignore+=*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/.rbenv/**
set wildignore+=*/.nx/**,*.app,*.git,.git
set wildignore+=*.wav,*.mp3,*.ogg,*.pcm
set wildignore+=*.mht,*.suo,*.sdf,*.jnlp
set wildignore+=*.chm,*.epub,*.pdf,*.mobi,*.ttf
set wildignore+=*.mp4,*.avi,*.flv,*.mov,*.mkv,*.swf,*.swc
set wildignore+=*.ppt,*.pptx,*.docx,*.xlt,*.xls,*.xlsx,*.odt,*.wps
set wildignore+=*.msi,*.crx,*.deb,*.vfd,*.apk,*.ipa,*.bin,*.msu
set wildignore+=*.gba,*.sfc,*.078,*.nds,*.smd,*.smc
set wildignore+=*.linux2,*.win32,*.darwin,*.freebsd,*.linux,*.android

" --------------------------------------------------
" 有和没有 Tmux 時的功能键超时 (毫秒)
" --------------------------------------------------

" if $TMUX != ''
"     set ttimeoutlen=30
" elseif &ttimeoutlen > 80 || &ttimeoutlen <= 0
"     set ttimeoutlen=80
" endif

" --------------------------------------------------
" 终端下允许 Alt 並设置 ttimeout (详见: http://www.skywind.me/blog/archives/2021)
" --------------------------------------------------

" if has('nvim') == 0 && has('gui_running') == 0
"     function! s:metacode(key)
"         exec "set <M-".a:key.">=\e".a:key
"     endfunc
"     for i in range(10)
"         call s:metacode(nr2char(char2nr('0') + i))
"     endfor
"     for i in range(26)
"         call s:metacode(nr2char(char2nr('a') + i))
"         call s:metacode(nr2char(char2nr('A') + i))
"     endfor
"     for c in [',', '.', '/', ';', '{', '}']
"         call s:metacode(c)
"     endfor
"     for c in ['?', ':', '-', '_', '+', '=', "'"]
"         call s:metacode(c)
"     endfor
" endif

" --------------------------------------------------
" 终端下功能键设置
" --------------------------------------------------

" function! s:key_escape(name, code)
"     if has('nvim') == 0 && has('gui_running') == 0
"         exec "set ".a:name."=\e".a:code
"     endif
" endfunc

" --------------------------------------------------
" 功能键终端码矫正
" --------------------------------------------------

" call s:key_escape('<F1>', 'OP')
" call s:key_escape('<F2>', 'OQ')
" call s:key_escape('<F3>', 'OR')
" call s:key_escape('<F4>', 'OS')
" call s:key_escape('<S-F1>', '[1;2P')
" call s:key_escape('<S-F2>', '[1;2Q')
" call s:key_escape('<S-F3>', '[1;2R')
" call s:key_escape('<S-F4>', '[1;2S')
" call s:key_escape('<S-F5>', '[15;2~')
" call s:key_escape('<S-F6>', '[17;2~')
" call s:key_escape('<S-F7>', '[18;2~')
" call s:key_escape('<S-F8>', '[19;2~')
" call s:key_escape('<S-F9>', '[20;2~')
" call s:key_escape('<S-F10>', '[21;2~')
" call s:key_escape('<S-F11>', '[23;2~')
" call s:key_escape('<S-F12>', '[24;2~')

" --------------------------------------------------
" 配置微调
" 修正 ScureCRT/XShell 以及某些终端乱码问题，主要原因是不支持一些
" 终端控制命令，比如 cursor shaping 这类更改光标形状的 xterm 终端命令
" 会令一些支持 xterm 不完全的终端解析错误，显示为错误的字符，比如 q 字符
" 如果你确认你的终端支持，不会在一些不兼容的终端上运行该配置，可以注释
" --------------------------------------------------

" if has('nvim')
"     set guicursor=
" elseif (!has('gui_running')) && has('terminal') && has('patch-8.0.1200')
"     let g:termcap_guicursor = &guicursor
"     let g:termcap_t_RS = &t_RS
"     let g:termcap_t_SH = &t_SH
"     set guicursor=
"     set t_RS=
"     set t_SH=
" endif

" 打开文件时恢复上一次光标所在位置
" autocmd BufReadPost *
"     \ if line("'\"") > 1 && line("'\"") <= line("$") |
"     \	 exe "normal! g`\"" |
"     \ endif

" 定义一个 DiffOrig 命令用于查看文件改动
" if !exists(":DiffOrig")
"     command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
"         \ | wincmd p | diffthis
" endif

" --------------------------------------------------
" 文件类型微调
" --------------------------------------------------

augroup InitFileTypesGroup
    " 清除同组的历史 autocommand
    au!

    " C/C++ 文件使用 // 作为注释
    au FileType c,cpp setlocal commentstring=//\ %s

    " Markdown 允许自动换行
    au FileType markdown setlocal wrap

    " Lisp 进行微调
    au FileType lisp setlocal ts=8 sts=2 sw=2 et

    " Scala 微调
    au FileType scala setlocal sts=4 sw=4 noet

    " Haskell 进行微调
    au FileType haskell setlocal et

    " 强制对某些扩展名的 filetype 进行纠正
    au BufNewFile,BufRead *.as setlocal filetype=actionscript
    au BufNewFile,BufRead *.pro setlocal filetype=prolog
    au BufNewFile,BufRead *.es setlocal filetype=erlang
    au BufNewFile,BufRead *.asc setlocal filetype=asciidoc
    au BufNewFile,BufRead *.vl setlocal filetype=verilog
augroup END
