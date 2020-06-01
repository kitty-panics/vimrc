" ==================================================
"
" 模塊化的 Vim 配置
"
" ==================================================

" 防止重复加载
if get(s:, 'loaded', 0) != 0
    finish
else
    let s:loaded = 1
endif

" 獲取本文件所在的目录並加入 RuntimePath
let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h')
exec 'set rtp+='.s:home

" 将 ~/.vim 目录加入 RuntimePath (有时候 Vim 不会自动帮你加入)
" set rtp+=~/.vim

" 定义一个命令用来加载腳本
command! -nargs=1 LoadScript exec 'so '.s:home.'/'.'<args>'

" --------------------------------------------------
" 加載基礎配置
" --------------------------------------------------

" 基本的配置
LoadScript base/base-init.vim

" 外觀與樣式
LoadScript base/base-ui.vim

" GUI 下的外觀與樣式
LoadScript base/base-gui.vim

" 一些增強設置
LoadScript base/base-enhanced.vim

" --------------------------------------------------
" 加載命令
" --------------------------------------------------

" 加載自定義的命令
LoadScript base/command-custom.vim

" --------------------------------------------------
" 加載按鍵映射
" --------------------------------------------------

" 命令模式
LoadScript base/keymap-cnoremap.vim

" 插入模式
LoadScript base/keymap-inoremap.vim

" 普通模式
LoadScript base/keymap-noremap.vim

" --------------------------------------------------
" 加載插件
" 插件管理使用 [vim-plug](https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim)
" --------------------------------------------------

" 加載插件列表
LoadScript plug/list.vim

" --------------------------------------------------
" 修補設置
" --------------------------------------------------

" 顏色方案
LoadScript others/fix-color.vim
