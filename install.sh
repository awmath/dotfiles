# install neovim
sh install-neovim.sh

# install tooling
sudo apt update
sudo apt install -y tmux

# clone nvim config
mkdir -p ~/.config/
git clone https://github.com/awmath/neovim-config ~/.config/nvim
