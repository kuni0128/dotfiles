# alias
alias la='ls -la'
alias d='docker'
alias dc='docker-compose'
alias g='git'
alias gc='git checkout'
alias gb='git branch'
alias gs='git status'
alias ga='git add .'
alias gd='git diff'
alias t='tmux'
alias k='kubectl'
alias p='peco'

# bash
source ~/dotfiles/.bash/peco_history.sh
source ~/dotfiles/.bash/.git-prompt.sh
#source /usr/local/etc/bash_completion.d/git-completion.bash
#source ~/.bash/git-completion.bash

# env
HISTSIZE=100000
#export PS1='[\W$(__git_ps1 " \[\e[32m\]\e[1m\](%s)\[\e[0m\]")]\$ '
#export PS1='\[\033[37m\][\t \[\033[32m\]\W\[\033[37m\]]\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
export PS1='\[\033[37m\][\t \[\033[32m\]\W\[\033[37m\]]\[\033[33m\]$(__git_ps1)\[\033[00m\]\$ '
export PATH=$PATH:/usr/local/share/git-core/contrib/diff-highlight
export PATH=$PATH:/usr/local/bin # vim8
export PATH="$HOME/.anyenv/envs/rbenv/bin:$PATH"
eval "$(anyenv init -)"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH=$PATH:/Users/kuniaki/bin/flutter/bin # flutter


# import environment configuration
#source ~/dotfiles/.bash/env.sh

export USE_GKE_GCLOUD_AUTH_PLUGIN=True

