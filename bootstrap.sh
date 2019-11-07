#!/bin/bash

./zsh_install.sh

zsh -c "./software_install.sh"

# clone dotfile repo
git clone https://github.com/YukinaMochizuki/dotfile.git ~/dotfile
cd ~/dotfile && ./install










