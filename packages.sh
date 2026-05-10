#!/bin/sh

printf "Installing development tools\n"
doas pkg install -y vim go typescript-go nodejs npm gopls delve git tree

printf "Installing utils and drivers\n"
doas pkg install -y drm-kmod doas lynx curl fzf portsnap yt-dlp

printf "Installing apps\n"
doas pkg install -y htop zathura zathura-pdf-mupdf qbittorrent mpv

printf "Installing xfce with xlibre\n"
doas pkg install -y xlibre xclip xinit xfce xfce4-screenshooter-plugin xfce4-clipman-plugin
