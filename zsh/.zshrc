# Set env
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

# Setup prompt
autoload -Uz colors && colors
#PROMPT="%F{green}%n%f %F{cyan}($(arch))%f:%F{blue}%~%f"$'\n'"%# "
PROMPT="%F{green}%n%f %F{cyan}($(git_super_status))%f:%F{blue}%~%f"$'\n'"%# "
#PROMPT="%F{green}%h%f:%F{cyan}%~%f $(git_super_status)"$'\n'"%# "


# Enable plugins
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  source /usr/local/opt/zsh-git-prompt/zshrc.sh

  autoload -Uz compinit
  compinit
fi

