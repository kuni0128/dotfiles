if &compatible
  set nocompatible
endif

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein/')
  call dein#begin('~/.cache/dein/')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  call dein#add('scrooloose/nerdtree')                "ツリー表示
  call dein#add('Shougo/neocomplete.vim')             "コードの自動補完
  call dein#add('Shougo/neosnippet.vim')              "スニペットの補完機能
  call dein#add('Shougo/neosnippet-snippets')         "スニペット集
  call dein#add('chriskempson/vim-tomorrow-theme')    "カラースキーマ

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif
