DOTFILES_DIR := $(abspath $(dir $(lastword $(MAKEFILE_LIST))))

.PHONY: all install brew symlinks vim

all: install

install: brew symlinks vim
	@echo "Setup complete. Restart your shell or run: source ~/.zshrc"

brew:
	@which brew > /dev/null 2>&1 || \
		/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	brew bundle --file=$(DOTFILES_DIR)/Brewfile

symlinks:
	ln -sf $(DOTFILES_DIR)/zsh/.zshrc     $(HOME)/.zshrc
	ln -sf $(DOTFILES_DIR)/vim/.vimrc     $(HOME)/.vimrc
	ln -sf $(DOTFILES_DIR)/tmux/.tmux.conf $(HOME)/.tmux.conf

vim:
	vim +PlugInstall +qall
