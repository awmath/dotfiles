#!/bin/sh
curl -Ls https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz | sudo tar xvfz - -C /opt/
sudo ln -sf /opt/nvim-linux64/bin/nvim /usr/local/bin
sudo chmod +x /usr/local/bin/nvim

# clone nvim config
mkdir -p ~/.config/
git clone https://github.com/awmath/neovim-config ~/.config/nvim || echo "NeoVim config already exists."

# initialize basic neovim config
echo "Initializing NeoVim"
nvim --headless +"Lazy sync" +"qall"
echo "NeoVim setup complete."