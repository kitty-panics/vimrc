" ==================================================
" GUI 外觀樣式
" ==================================================

" Windows 禁用 Alt 操作菜单 (使得 Alt 可以用到 Vim 里)
set winaltkeys=no

" 禁用圖形化組件
if has("gui")
    set guioptions-=T   " 禁用工具栏
    set guioptions-=m   " 禁用菜单栏
    set guioptions-=l   " 禁用滚动条
    set guioptions-=L
    set guioptions-=r
    set guioptions-=R
    set mouse-=a        " 禁用鼠标
    set noconfirm       " 在退出時关闭确认
endif

if has("win64") || has("win32") && has("gui")
    " 字体配置
    set guifont=DejaVuSansMono_Nerd_Font:h15,Consolas:h15

    " 启动时窗口最大化
    au GUIEnter * simalt ~x

    " 启动时窗口透明
    hi Normal ctermfg=252 ctermbg=none
else
    set guifont=DejaVuSansMono\ Nerd\ Font\ 15,Consolas\ 15
endif
