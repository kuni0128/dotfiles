if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein//repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein/')
  call dein#begin('~/.cache/dein/')

  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein//repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('scrooloose/nerdtree')                "ツリー表示
  call dein#add('Shougo/neocomplete.vim')             "コードの自動補完
  call dein#add('Shougo/neosnippet.vim')              "スニペットの補完機能
  call dein#add('Shougo/neosnippet-snippets')         "スニペット集
  call dein#add('chriskempson/vim-tomorrow-theme')    "カラースキーマ

  " You can specify revision/branch/tag.
  "call dein#add('Shougo/deol.nvim', { 'rev': 'a1b5108fd' })
  "call dein#add('Shougo/deol.nvim')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
