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
  # Neovim stable PPA (Ubuntu's apt version is too old for modern plugins)
  if ! grep -rq "neovim-ppa/stable" /etc/apt/sources.list.d/ 2>/dev/null; then
    sudo add-apt-repository -y ppa:neovim-ppa/stable
  fi

  sudo apt update
  sudo apt install -y \
    zsh \
    zsh-autosuggestions \
    zsh-syntax-highlighting \
    neovim \
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

  # zsh-git-prompt is not available via apt
  if [ ! -d "$HOME/.zsh-git-prompt" ]; then
    git clone https://github.com/olivierverdier/zsh-git-prompt "$HOME/.zsh-git-prompt"
  fi
}

setup_symlinks() {
  ln -sf "$DOTFILES_DIR/zsh/.zshrc"  "$HOME/.zshrc"
  mkdir -p "$HOME/.config"
  ln -sfn "$DOTFILES_DIR/nvim"       "$HOME/.config/nvim"
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
nvim --headless "+Lazy! sync" +qa
echo "Done. Run: source ~/.zshrc"
