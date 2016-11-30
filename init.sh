#! /bin/bash

mkdir -p ~/.config
ln -sf ~/dotfiles/config/* ~/.config/
cp -r ~/dotfiles/nvim ~/.config/
ln -sf ~/dotfiles/root/.[!.]* ~/
sudo ln -sf ~/dotfiles/no_custom.keybinding /usr/share/X11/xkb/symbols/no_custom
