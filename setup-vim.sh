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
git clone https://github.com/scrooloose/nerdtree.git

## create symbolic link for vim plugins
ln -sf ~/dotfiles/.vim/config/plugins/nerdtree.vim ~/.vim/config/plugins/nerdtree.vim

## create symbolic link for vim configuration
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.vim/config/basic.vim ~/.vim/config/basic.vim
ln -sf ~/dotfiles/.vim/config/display.vim ~/.vim/config/display.vim
ln -sf ~/dotfiles/.vim/config/search.vim ~/.vim/config/search.vim
