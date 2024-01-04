# -------------------------
# Set alias
# -------------------------
alias la='ls -la'
alias d='docker'
alias dc='docker compose'
alias g='git'
alias gc='git checkout'
alias gb='git branch'
alias gs='git status'
alias ga='git add .'
alias gd='git diff'
alias t='tmux'
alias k='kubectl'
alias p='peco'

# -------------------------
# Set configure
# -------------------------
source ~/dotfiles/.bash/peco_history.sh
source ~/dotfiles/.bash/.git-prompt.sh

# -------------------------
# Set env
# -------------------------
HISTSIZE=100000
#export PS1='\[\033[37m\][\t \[\033[32m\]\W\[\033[37m\]]\[\033[33m\]$(__git_ps1)\[\033[00m\]\$ '
export PATH=$PATH:/usr/local/share/git-core/contrib/diff-highlight
export PATH=$PATH:/usr/local/bin # vim8
#export PATH="$HOME/.anyenv/envs/rbenv/bin:$PATH"
#eval "$(anyenv init -)"
#export PATH="$HOME/.cargo/bin:$PATH"
export USE_GKE_GCLOUD_AUTH_PLUGIN=True

# -------------------------
# Enable plugins
# -------------------------
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(starship init zsh)"
eval "$(anyenv init -)"
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'
. "$HOME/.asdf/asdf.sh"
. "$HOME/.asdf/completions/asdf.bash"

