# command alias
alias ll='ls -la'
alias gc='git checkout'
alias gb='git branch'
alias gs='git status'
alias ga='git add .'
alias gd='git diff'
alias p='peco'

# import environment configuration
source ~/dotfiles/.bash/env.sh

# git
#source ~/.bash/git-completion.bash
export PATH=$PATH:/usr/local/share/git-core/contrib/diff-highlight

# vim8
export PATH=$PATH:/usr/local/bin

# javascript
#export PATH=$PATH:$HOME/.ndenv/versions/v6.7.0/bin/gulp
#export PATH=$PATH:$HOME/.ndenv/bin
#eval "$(ndenv init -)"

# php
#export PATH="$PATH:$HOME/.composer/vendor/bin:$HOME/.phpenv/bin"
#eval "$(phpenv init -)"

# ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# peco
source ~/dotfiles/.bash/peco_history.sh
