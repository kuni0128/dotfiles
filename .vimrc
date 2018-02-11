"------------------------
" 共通
"------------------------
set virtualedit=block           "矩形選択時に文字がなくても右に移動可能
set wildmode=list:full          "ファイル名補完時にリスト表示かつ、tab押下時に次候補を選択
set backspace=indent,eol,start  "deleteキーで行頭の空白、改行、挿入モード開始位置より手前の文字を削除
nnoremap cp ve"8d"0p            "cpで8番レジスタに格納した単語で上書き

"------------------------
" 検索
"------------------------
set ignorecase           "大文字小文字を無視
set incsearch            "文字入力した時点で検索開始
set hlsearch             "検索結果をハイライト表示

"------------------------
" 表示
"------------------------
set number               "行番号を表示
set title                "ファイル名をタイトルに表示
set autoindent           "前行インデントに合わせて改行
set expandtab            "tab押下時に空白を挿入
set laststatus=2         "ステータス行を常に表示
set showcmd              "実行前入力コマンドを右下に表示
syntax on                "シンタックスハイライトを有効
