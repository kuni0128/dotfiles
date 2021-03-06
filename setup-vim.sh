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
git clone https://github.com/Shougo/deoplete.nvim.git               #コードの自動補完
git clone https://github.com/roxma/nvim-yarp.git                    #vim8でdeopleteを使うために必要
git clone https://github.com/roxma/vim-hug-neovim-rpc.git           #vim8でdeopleteを使うために必要
git clone https://github.com/Shougo/deoplete-rct.git                #ruby補完
git clone https://github.com/fishbullet/deoplete-ruby.git           #ruby補完
git clone https://github.com/osyo-manga/vim-monster.git             #ruby補完
git clone https://github.com/tpope/vim-rails.git                    #railsコードジャンプ
git clone https://github.com/Shougo/neosnippet.vim.git              #スニペットの自動補完
git clone https://github.com/Shougo/neosnippet-snippets.git         #スニペット集
git clone https://github.com/chriskempson/vim-tomorrow-theme.git    #カラースキーマ
git clone https://github.com/vim-scripts/twilight.git               #カラースキーマ
git clone https://github.com/w0ng/vim-hybrid.git                    #カラースキーマ
git clone https://github.com/ctrlpvim/ctrlp.vim.git                 #多機能セレクタ

# TODO: lazy load
git clone https://github.com/slim-template/vim-slim.git             #slim用シンタックスハイライト
git clone https://github.com/posva/vim-vue.git                      #vue用シンタックスハイライト
git clone https://github.com/aklt/plantuml-syntax.git               #plantumlシンタックスハイライト
git clone https://github.com/digitaltoad/vim-pug.git                #pug用シンタックスハイライト
git clone https://github.com/tpope/vim-endwise.git                  #閉じタグの自動補完

## create symbolic link for vim plugins
ln -sf ${dot_vim_config_path}/plugins/nerdtree.vim ${vim_config_path}/plugins/nerdtree.vim
ln -sf ${dot_vim_config_path}/plugins/deoplete.vim ${vim_config_path}/plugins/deoplete.vim

## create symbolic link for vim configuration
ln -sf ${dot_path}/.vimrc ~/.vimrc
ln -sf ${dot_vim_config_path}/basic.vim ${vim_config_path}/basic.vim
ln -sf ${dot_vim_config_path}/ctags.vim ${vim_config_path}/ctags.vim
ln -sf ${dot_vim_config_path}/display.vim ${vim_config_path}/display.vim
ln -sf ${dot_vim_config_path}/search.vim ${vim_config_path}/search.vim
