#!/bin/sh
# initialize basic neovim config
echo "Initializing NeoVim"
nvim --headless +"Lazy sync" +"qall"
echo "NeoVim setup complete."
