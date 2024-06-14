#!/bin/bash

temp_dir=$(mktemp -d)

curl -sL "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Hack.zip" >$temp_dir/font.zip
mkdir -p $HOME/.fonts
unzip $temp_dir/font.zip -d $HOME/.fonts/

fc-cache -f
