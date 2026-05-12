# dotfiles

macOS と Ubuntu 向けの個人 dotfiles。zsh と Neovim の設定を管理する。

## セットアップ

```bash
git clone https://github.com/kuni0128/dotfiles.git ~/dotfiles
cd ~/dotfiles
make install
```

インストール後、ターミナルを再起動するか `exec zsh` を実行する。

### macOS の注意点

- 新規 macOS では `git clone` 時に Xcode Command Line Tools のインストールを求められる — 承認する。
- Homebrew のインストール時にパスワードが求められる場合がある。

### Ubuntu の注意点

- `add-apt-repository` のために `software-properties-common` が必要 (デスクトップ版では通常プリインストール済み)。
- `make` が無い場合は事前にインストール: `sudo apt install -y make`
- Neovim PPA が稀に 503 を返すことがある。その場合は AppImage で Neovim を手動インストールしてから `make install` を再実行する。

## インストールされるもの

### パッケージ

| カテゴリ | macOS (Brewfile) | Ubuntu (apt + git) |
|----------|------------------|---------------------|
| Shell | `zsh-autosuggestions`, `zsh-syntax-highlighting`, `zsh-completions`, `zsh-git-prompt` | apt: `zsh-autosuggestions`, `zsh-syntax-highlighting` / git: `zsh-git-prompt` |
| エディタ | `neovim` | `neovim` (PPA経由) |
| Git | `git`, `gh` | `git`, `gh` |
| 検索 | `fzf`, `ripgrep`, `peco` | `fzf`, `ripgrep`, `peco` |
| バージョン管理 | `anyenv` | `anyenv` (git経由) |

### 設定ファイル

| ソース | リンク先 |
|--------|--------|
| `zsh/.zshrc` | `~/.zshrc` |
| `nvim/` | `~/.config/nvim/` |

## ディレクトリ構造

```
dotfiles/
├── install.sh      # OS判定 + インストール処理
├── Makefile        # `make install` → bash install.sh
├── Brewfile        # macOS用パッケージ定義
├── zsh/.zshrc      # zsh設定
└── nvim/           # Neovim設定 (lazy.nvim)
    ├── init.lua
    ├── lua/
    │   ├── options.lua
    │   ├── keymaps.lua
    │   └── plugins.lua
    └── CHEATSHEET.md
```

## Neovim チートシート

ペイン操作やファイルツリーの基本操作は [nvim/CHEATSHEET.md](nvim/CHEATSHEET.md) を参照。
