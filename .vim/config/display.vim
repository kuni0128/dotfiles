set number                           "行番号を表示
set title                            "ファイル名をタイトルに表示
set autoindent                       "前行インデントに合わせて改行
set expandtab                        "tab押下時に空白を挿入
set laststatus=2                     "ステータス行を常に表示
set showcmd                          "実行前入力コマンドを右下に表示

syntax on                            "シンタックスハイライトを有効
"colorscheme Tomorrow-Night-Bright    "カラースキーマを指定
highlight LineNr ctermfg=228         "行番号の色
autocmd FileType vue syntax sync fromstart    "ファイルの先頭からパースしてハイライト行う
