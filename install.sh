#!/usr/bin/env bash
set -e

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"
OS="$(uname -s)"

install_macos() {
  which brew > /dev/null 2>&1 || \
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  brew bundle --file="$DOTFILES_DIR/Brewfile"
}

install_ubuntu() {
  sudo apt update
  sudo apt install -y \
    zsh \
    zsh-autosuggestions \
    zsh-syntax-highlighting \
    vim \
    tmux \
    git \
    fzf \
    ripgrep \
    peco

  if ! which gh > /dev/null 2>&1; then
    curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg \
      | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] \
      https://cli.github.com/packages stable main" \
      | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
    sudo apt update && sudo apt install -y gh
  fi

  if [ ! -d "$HOME/.anyenv" ]; then
    git clone https://github.com/anyenv/anyenv "$HOME/.anyenv"
    "$HOME/.anyenv/bin/anyenv" install --init
  fi
}

setup_symlinks() {
  ln -sf "$DOTFILES_DIR/zsh/.zshrc"       "$HOME/.zshrc"
  ln -sf "$DOTFILES_DIR/vim/.vimrc"       "$HOME/.vimrc"
  ln -sf "$DOTFILES_DIR/tmux/.tmux.conf"  "$HOME/.tmux.conf"
}

case "$OS" in
  Darwin)
    echo "[macOS] Installing packages..."
    install_macos
    ;;
  Linux)
    echo "[Ubuntu] Installing packages..."
    install_ubuntu
    ;;
  *)
    echo "Unsupported OS: $OS" && exit 1
    ;;
esac

setup_symlinks
vim +PlugInstall +qall
echo "Done. Run: source ~/.zshrc"
