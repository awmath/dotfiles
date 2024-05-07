#!/bin/bash
set -e

# work on script directory
SCRIPT=$(realpath "$0")
SCRIPT_PATH=$(dirname "$SCRIPT")

# install neovim
sh $SCRIPT_PATH/install-neovim.sh

# install tooling
sudo apt update
sudo apt install -y tmux

# clone nvim config
mkdir -p ~/.config/
git clone https://github.com/awmath/neovim-config ~/.config/nvim || echo "NeoVim config already exists."
