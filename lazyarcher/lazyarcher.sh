#!/bin/bash
#
#A personal script to auto install necessary packages on Arch
#slpooy27112018
#
# firewolfxda@outlook.com

checker=$(grep -R ID= /etc/os-release)
if [[ "${checker}" =~ "arch" ]]; then
sudo pacman -Syyu --noconfirm
sudo pacman -S pulseaudio-bluetooth ntfs-3g code codeblocks gimp gufw rhythmbox telegram-deskyop vlc xterm gthumb aria2 git atom a52dec faac faad2 flac jasper lame libdca libdv libmad libmpeg2 libtheora libvorbis libxv wavpack x264 xvidcore gstreamer0.10-plugins p7zip p7zip-plugins unrar tar rsync unzip noto-fonts-cjk alsa-firmware alsa-utils alsa-plugins pulseaudio-alsa pulseaudio --noconfirm
git clone https://aur.archlinux.org/trizen.git
cd trizen
makepkg -si
trizen -S google-chrome --noconfirm
fi
