# dotfiles

Personal dotfiles for macOS and Ubuntu. Manages zsh and Neovim configuration.

## Setup

```bash
git clone https://github.com/kuni0128/dotfiles.git ~/dotfiles
cd ~/dotfiles
make install
```

After install, restart your terminal (or run `exec zsh`).

### macOS notes

- On a fresh macOS, `git clone` triggers a prompt to install Xcode Command Line Tools — accept it.
- Homebrew installation may ask for your password.

### Ubuntu notes

- Requires `software-properties-common` for `add-apt-repository` (usually pre-installed on desktop).
- If `make` is missing, install it first: `sudo apt install -y make`.
- The Neovim PPA can occasionally return 503. If that happens, install Neovim manually via AppImage and re-run `make install`.

## What's included

### Packages

| Category | macOS (Brewfile) | Ubuntu (apt + git) |
|----------|------------------|---------------------|
| Shell | `zsh-autosuggestions`, `zsh-syntax-highlighting`, `zsh-completions`, `zsh-git-prompt` | apt: `zsh-autosuggestions`, `zsh-syntax-highlighting` / git: `zsh-git-prompt` |
| Editor | `neovim` | `neovim` (via PPA) |
| Git | `git`, `gh` | `git`, `gh` |
| Search | `fzf`, `ripgrep`, `peco` | `fzf`, `ripgrep`, `peco` |
| Version manager | `anyenv` | `anyenv` (via git) |

### Configs

| Source | Target |
|--------|--------|
| `zsh/.zshrc` | `~/.zshrc` |
| `nvim/` | `~/.config/nvim/` |

## Structure

```
dotfiles/
├── install.sh      # OS detection + install logic
├── Makefile        # `make install` → bash install.sh
├── Brewfile        # macOS packages
├── zsh/.zshrc      # zsh configuration
└── nvim/           # Neovim configuration (lazy.nvim)
    ├── init.lua
    ├── lua/
    │   ├── options.lua
    │   ├── keymaps.lua
    │   └── plugins.lua
    └── CHEATSHEET.md
```

## Neovim cheatsheet

See [nvim/CHEATSHEET.md](nvim/CHEATSHEET.md) for basic pane/tree operations.
