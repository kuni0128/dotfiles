#!/bin/bash

package_path="${HOME}/.vim/pack/mypackage"
package_start_path="${package_path}/start"
package_opt_path="${package_path}/opt"
dot_path="${HOME}/dotfiles"
dot_vim_config_path="${dot_path}/.vim/config"
vim_config_path="${HOME}/.vim/config"

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
git clone https://github.com/ctrlpvim/ctrlp.vim.git                 #多機能セレクタ
git clone https://github.com/slim-template/vim-slim.git             #slim用シンタックスハイライト
git clone https://github.com/posva/vim-vue.git                      #vue用シンタックスハイライト
git clone https://github.com/tpope/vim-endwise.git                  #閉じタグの自動補完

## create symbolic link for vim plugins
ln -sf ${dot_vim_config_path}/plugins/nerdtree.vim ${vim_config_path}/plugins/nerdtree.vim
ln -sf ${dot_vim_config_path}/plugins/neocomplete.vim ${vim_config_path}/plugins/neocomplete.vim

## create symbolic link for vim configuration
ln -sf ${dot_path}/.vimrc ~/.vimrc
ln -sf ${dot_vim_config_path}/basic.vim ${vim_config_path}/basic.vim
ln -sf ${dot_vim_config_path}/display.vim ${vim_config_path}/display.vim
ln -sf ${dot_vim_config_path}/search.vim ${vim_config_path}/search.vim
