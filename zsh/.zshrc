# init
zstyle ":completion:*:commands" rehash 1
autoload -Uz colors && colors

# alias
alias python="python3"

# env
typeset -U path PATH
path=(
  /usr/local/bin
  /System/Cryptexes/App/usr/bin
  /usr/bin
  /bin
  /usr/sbin
  /sbin
  /Library/Apple/usr/bin
)

# plugins
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  source /usr/local/opt/zsh-git-prompt/zshrc.sh

  autoload -Uz compinit
  compinit
fi

# prompt
PROMPT="%F{green}%n%f %F{cyan}($(git_super_status))%f:%F{185}%~%f"$'\n'"%# "

# functions
add_newline() {
  if [[ -z $PS1_NEWLINE_LOGIN ]]; then
    PS1_NEWLINE_LOGIN=true
  else
    printf '\n'
  fi
}

precmd() {
  add_newline
}
