#!/bin/bash
set -e

# 310-nerd_fonts.sh --- Install some Nerd Fonts for the current user.

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

[ ! -d ~/.local/share/fonts ] && mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts

[ ! -f ./FiraCode.zip ] && wget --no-check-certificate https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
unzip FiraCode.zip
[ ! -f ./Hack.zip ] && wget --no-check-certificate https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip 
unzip Hack.zip
[ ! -f ./Inconsolata.zip ] && wget --no-check-certificate https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Inconsolata.zip 
unzip Inconsolata.zip
[ ! -f ./Iosevka.zip ] && wget --no-check-certificate https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Iosevka.zip  
unzip Iosevka.zip
[ ! -f ./JetBrainsMono.zip ] && wget --no-check-certificate https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/JetBrainsMono.zip  
unzip JetBrainsMono.zip
[ ! -f ./LiberationMono.zip ] && wget --no-check-certificate https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/LiberationMono.zip  
unzip LiberationMono.zip
[ ! -f ./SourceCodePro.zip ] && wget --no-check-certificate https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/SourceCodePro.zip  
unzip SourceCodePro.zip

fc-cache -f > /dev/null

