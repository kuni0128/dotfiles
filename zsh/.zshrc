#################################
# general
#################################

# init
case "$(uname -s)" in
  Darwin)
    source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
    source $(brew --prefix)/opt/zsh-git-prompt/zshrc.sh
    ;;
  Linux)
    source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
    [[ -f /usr/share/zsh-git-prompt/zshrc.sh ]] && source /usr/share/zsh-git-prompt/zshrc.sh
    ;;
esac
zstyle ":completion:*:commands" rehash 1
autoload -Uz colors && colors
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs
autoload -Uz compinit
compinit

# alias
alias python="python3"
alias la="ls -la"
alias g="git"
alias gb="git branch"
alias gd="git diff"
alias gs="git status"
alias gc="git checkout"
alias distinct='awk '\''!a[$0]++'\'

# env
[[ "$(uname -s)" == "Darwin" ]] && FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
typeset -U path PATH
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

#################################
# peco
#################################
function peco-select-history() {
  BUFFER=$(\history -n -r 1 | distinct | peco --query "$LBUFFER")
  CURSOR=$#BUFFER
  zle reset-prompt
}
zle -N peco-select-history
bindkey '^r' peco-select-history

function peco-cdr() {
  local selected_dir=$(cdr -l | awk '{ print $2 }' | peco)
  if [ -n "$selected_dir" ]; then
    BUFFER="cd ${selected_dir}"
    zle accept-line
  fi
  zle clear-screen
}
zle -N peco-cdr
bindkey '^e' peco-cdr

