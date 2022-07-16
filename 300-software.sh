#!/bin/bash
set -e

# 300-software.sh --- Install software from the openSUSE repositories.

# Copyright (C) 2022 Marc Schlienger <marc.schlienger@posteo.de>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the 
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

source ./functions.sh


###############################################################################
#category Accessories


###############################################################################
category "Development - C"
pkgs=(
pattern\:devel_basis
pattern\:devel_C_C++
cmake
clang-devel
)

for pkg in "${pkgs[@]}" ; do
	install $pkg
done
	

###############################################################################
category "Development - Java"
pkgs=(
pattern\:devel_java
)

for pkg in "${pkgs[@]}" ; do
	install $pkg
done


###############################################################################
category "Development - Javascript"
pkgs=(
nodejs
npm
yarn
)

for pkg in "${pkgs[@]}" ; do
	install $pkg
done


###############################################################################
category "Development - Python"
pkgs=(
pattern\:devel_python3
)


for pkg in "${pkgs[@]}" ; do
	install $pkg
done

###############################################################################
category "Development - Tools"

pkgs=(
colordiff
fd
flex
ripgrep
the_silver_searcher
)

for pkg in "${pkgs[@]}" ; do
	install $pkg
done


###############################################################################
#category Education


###############################################################################
category Fonts
pkgs=(
fontawesome-fonts 
google-roboto-mono-fonts
)

for pkg in "${pkgs[@]}" ; do
	install $pkg
done


###############################################################################
#category Games


###############################################################################
category Graphics
pkgs=(
dia
gnuplot
graphviz
inkscape
)

for pkg in "${pkgs[@]}" ; do
	install $pkg
done


###############################################################################
category "Internet and Network"
pkgs=(
nmap
youtube-dl
)

for pkg in "${pkgs[@]}" ; do
	install $pkg
done


###############################################################################
category Multimedia
pkgs=(
audacity
handbrake-gtk
ffmpeg
mpv
obs-studio
)


for pkg in "${pkgs[@]}" ; do
	install $pkg
done


###############################################################################
category Office
pkgs=(
texlive
zathura 
zathura-plugin-djvu 
zathura-plugin-ps
)

for pkg in "${pkgs[@]}" ; do
	install $pkg
done


###############################################################################
#category Other


###############################################################################
#category Research


###############################################################################
category System
pkgs=(
bat
btop
exa
git
neofetch
nextcloud-desktop
nnn
ntfs-3g
stow
sysstat
tmux
)

for pkg in "${pkgs[@]}" ; do
	install $pkg
done

sudo systemctl enable --now NetworkManager


###############################################################################
category "Zipping Tools"
pkgs=(
arj
cabextract 
sharutils 
unrar
uudeview
)

for pkg in "${pkgs[@]}" ; do
	install $pkg
done

