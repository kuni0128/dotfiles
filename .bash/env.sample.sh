GIT_COMPLETION_PATH=""
GIT_PROMPT_PATH=""

source $GIT_COMPLETION_PATH
source $GIT_PROMPT_PATH

if [ -f ${GIT_PROMPT_PATH} ]; then
  # プロンプトに各種情報を表示
  GIT_PS1_SHOWDIRTYSTATE=1
  GIT_PS1_SHOWUPSTREAM=1
  GIT_PS1_SHOWUNTRACKEDFILES=
  GIT_PS1_SHOWSTASHSTATE=1

  ############### ターミナルのコマンド受付状態の表示変更
  # \u ユーザ名
  # \h ホスト名
  # \W カレントディレクトリ
  # \w カレントディレクトリのパス
  # \n 改行
  # \d 日付
  # \[ 表示させない文字列の開始
  # \] 表示させない文字列の終了
  # \$ $
  export PS1='\[\033[1;32m\]\u\[\033[00m\]:\[\033[1;34m\]\w\[\033[1;31m\]$(__git_ps1)\[\033[00m\] \$ '
  ##############
fi
