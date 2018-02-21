if &compatible
  set nocompatible
endif

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  call dein#add(s:dein_repo_dir)

  call dein#add('scrooloose/nerdtree')                "ツリー表示
  call dein#add('Shougo/neocomplete.vim')             "コードの自動補完
  call dein#add('Shougo/neosnippet.vim')              "スニペットの補完機能
  call dein#add('Shougo/neosnippet-snippets')         "スニペット集
  call dein#add('chriskempson/vim-tomorrow-theme')    "カラースキーマ
  call dein#add('ctrlpvim/ctrlp.vim')                 "ファイル操作
  call dein#add('slim-template/vim-slim')             "slim用シンタックスハイライト

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif
