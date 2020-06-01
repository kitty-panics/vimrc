" ==================================================
" 名稱: fzf.vim
" 來源: 
" ==================================================

" 设置打开 fzf.vim 的快捷键
map <F2> :Files<CR>

" 默认的按键绑定
let g:fzf_action = {
    \ 'ctrl-t': 'tab split',
    \ 'ctrl-x': 'split',
    \ 'ctrl-v': 'vsplit'}

" 默认的 fzf 布局( down / up / left / right )
let g:fzf_layout = { 'down': '~40%' }
" In Neovim, you can set up fzf window using a Vim command
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }
let g:fzf_layout = { 'window': '10new' }

" 以我的配色方案定制 fzf 配色
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
\   'bg':      ['bg', 'Normal'],
\   'hl':      ['fg', 'Comment'],
\   'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
\   'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
\   'hl+':     ['fg', 'Statement'],
\   'info':    ['fg', 'PreProc'],
\   'border':  ['fg', 'Ignore'],
\   'prompt':  ['fg', 'Conditional'],
\   'pointer': ['fg', 'Exception'],
\   'marker':  ['fg', 'Keyword'],
\   'spinner': ['fg', 'Label'],
\   'header':  ['fg', 'Comment']}

" 启用历史记录
let g:fzf_history_dir = '~/.cache/fzf-history'

" [Buffers] 跳转到现有窗口
let g:fzf_buffers_jump = 1

" [[B]Commits] 自定义 git log 命令
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" [Tags] 生成 tag 命令
let g:fzf_tags_command = 'ctags -R'

" [Commands] 用于直接执行命令的表达式
let g:fzf_commands_expect = 'alt-enter,ctrl-x'
