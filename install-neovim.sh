curl -Ls https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz | tar xvfz - -C /opt/
sudo ln -s /opt/nvim-linux64/bin/nvim /usr/local/bin
sudo chmod +x /usr/local/bin/nvim