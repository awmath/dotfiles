#!/bin/bash
set -e

# work on script directory
SCRIPT=$(realpath "$0")
SCRIPT_PATH=$(dirname "$SCRIPT")

# install tooling
sudo apt update
sudo apt install -y tmux ripgrep fd-find

# setup neovim
sh $SCRIPT_PATH/setup-neovim.sh
