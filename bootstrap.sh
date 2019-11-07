#!/bin/bash

./zsh_install.sh

zsh -c "./software_install.sh"

# clean .zshrc
rm -rf ~/.zshrc

# clone dotfile repo
git clone https://github.com/YukinaMochizuki/dotfile.git ~/dotfile
cd ~/dotfile && ./install

zsh -c "cd /tmp/Workspace-EnvDeployment && ./vim_plugin_install.sh"

# Setting time zone
sudo dpkg-reconfigure tzdata
