#!/bin/sh

printf "Installing development tools\n"
doas pkg install -y neovim go typescript-go gopls delve git crush tree

printf "Installing utils and drivers\n"
doas pkg install -y drm-kmod doas lynx curl fzf

printf "Installing apps\n"
doas pkg install -y htop irssi newsraft librewolf zathura zathura-pdf-mupdf qbittorrent mpv

printf "Installing lxqt with xlibre\n"
doas pkg install -y xlibre xinit xfce
