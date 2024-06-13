#!/bin/bash
set -e

# work on script directory
SCRIPT=$(realpath "$0")
SCRIPT_PATH=$(dirname "$SCRIPT")

# install tooling
sudo apt update
sudo apt install -y tmux ripgrep fd-find ncurses-term zsh git

# install just
just_path=/usr/local/bin/just
curl --proto '=https' --tlsv1.2 -sSf https://just.systems/install.sh | bash -s -- --to /tmp/just 
sudo mv /tmp/just /usr/local/bin/just

# install ohmyzsh
[ -z $ZSH ] && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# setup neovim
sh $SCRIPT_PATH/setup-neovim.sh
