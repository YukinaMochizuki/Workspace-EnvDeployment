#!/bin/bash

./zsh_install.sh

zsh -c "./software_install.sh"

# clean .zshrc
rm -rf ~/.zshrc

# clone dotfile repo
git clone https://github.com/YukinaMochizuki/dotfile.git ~/dotfile
cd ~/dotfile && ./install

./vim_plugin_install.sh



