set virtualedit=block           "矩形選択時に文字がなくても右に移動可能
set wildmode=list:full          "ファイル名補完時にリスト表示かつ、tab押下時に次候補を選択
set backspace=indent,eol,start  "deleteキーで行頭の空白、改行、挿入モード開始位置より手前の文字を削除
"nnoremap cp ve"8d"0p            "cpで8番レジスタに格納した単語で上書き
xnoremap p "_dP                  "ペースト時にレジスタに文字を保存しない
