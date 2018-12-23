#!/bin/bash
#
# A personal script to auto install necessary packages on Arch
# slpooy27112018
#
# firewolfxda@outlook.com

checker=$(grep -R ID= /etc/os-release)
if [[ "${checker}" =~ "arch" ]]; then

# Update database
sudo pacman -Syyu --noconfirm

# Install essential stuffs
sudo pacman -S pulseaudio-bluetooth ntfs-3g alsa-firmware alsa-utils alsa-plugins pulseaudio-alsa pulseaudio mesa noto-fonts-cjk xterm git --noconfirm

# Install vlc & codecs
vlc a52dec faac faad2 flac jasper lame libdca libdv libmad libmpeg2 libtheora libvorbis libxv wavpack x264 xvidcore gstreamer0.10-plugins --noconfirm

# Install telegram desktop
sudo pacman -S telegram-deskyop --noconfirm

# Install IDEs (vscode, codeblocks, atom, pycharm)
code codeblocks atom pycharm-community-edition --noconfirm

# Install photo editor (gimp)
sudo pacman -S gimp --noconfirm

# Install photo viewer
sudo pacman -S gthumb

# Install firewall
sudo pacman -S gufw --noconfirm

# Install music player (rhythmbox)
sudo paman -S rhythmbox --noconfirm

# Install archive tools
sudo pacman -S p7zip p7zip-plugins unrar tar rsync unzip --noconfirm

# Install a aur helper (trizen)
git clone https://aur.archlinux.org/trizen.git
cd trizen
makepkg -si

# Install google chrome stable
trizen -S google-chrome --noconfirm

# Build env stuffs
wget https://github.com/akhilnarang/scripts/raw/master/setup/arch-manjaro.sh
bash arch-manjaro.sh

fi
