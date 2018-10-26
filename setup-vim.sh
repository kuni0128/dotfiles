#!/bin/bash

package_path="~/.vim/pack/mypackage"
package_start_path="${package_path}/start"
package_opt_path="${package_path}/opt"
dot_path="~/dotfiles"
dot_vim_config_path="${dot_path}/.vim/config"
vim_config_path="~/.vim/config"

mkdir -p $package_start_path
mkdir -p $package_opt_path
mkdir -p "${vim_config_path}/plugins"

# git clone vim plugins with load at start
cd $package_start_path
git clone https://github.com/scrooloose/nerdtree.git                #ツリー表示
git clone https://github.com/Shougo/neocomplete.vim.git             #コードの自動補完
git clone https://github.com/Shougo/neosnippet.vim.git              #スニペットの自動補完
git clone https://github.com/Shougo/neosnippet-snippets.git         #スニペット集
git clone https://github.com/chriskempson/vim-tomorrow-theme.git    #カラースキーマ

## create symbolic link for vim plugins
ln -sf ~/dotfiles/.vim/config/plugins/nerdtree.vim ~/.vim/config/plugins/nerdtree.vim
ln -sf ~/dotfiles/.vim/config/plugins/neocomplete.vim ~/.vim/config/plugins/neocomplete.vim

## create symbolic link for vim configuration
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.vim/config/basic.vim ~/.vim/config/basic.vim
ln -sf ~/dotfiles/.vim/config/display.vim ~/.vim/config/display.vim
ln -sf ~/dotfiles/.vim/config/search.vim ~/.vim/config/search.vim
