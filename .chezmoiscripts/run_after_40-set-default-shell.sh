#!/bin/sh
set -u
sudo -s chsh -s $(which zsh) $CHEZMOI_USERNAME
