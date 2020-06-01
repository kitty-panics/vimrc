#!/bin/bash

#
# Copy the file to the specified location
#

# 删除旧的 Neovim 配置
rm -rf "$HOME/.config/nvim"
# 复制新的 Neovim 配置
cp -rf "../files" "$HOME/.config/nvim"
# 创建软连接
ln -sf "$HOME/.config/nvim/init.vim" "$HOME/.vimrc"
