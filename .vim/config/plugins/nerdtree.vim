"ファイル指定なしの場合、NERDTreeを表示
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"不可視ファイルを表示
let NERDTreeShowHidden = 1

"NERDTreeを表示するショートカット
map <C-n> :NERDTreeToggle<CR>
