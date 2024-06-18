#!/bin/bash
dnf config-manager --add-repo https://mise.jdx.dev/rpm/mise.repo
dnf copr enable agriffis/neovim-nightly
dnf install -y \
	mise \
	tmux \
	ripgrep \
	fd-find \
	bat \
	zsh \
	neovim python3-neovim \
	git \
	just \
	jq yq \
	curl wget rsync \
	python pipx \
	nodejs \
	golang \
	rust
