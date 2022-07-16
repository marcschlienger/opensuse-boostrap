#!/bin/bash
set -e

# 510-neovim.sh --- Install neovim, the package manager plug, support for python and node and some language servers for CoC.

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

install neovim

# Package manager (plug)
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Python and Node support
pip install pynvim
sudo npm i -g neovim

# Neovim remote
pip install neovim-remote

# C language server
install ccls

# LaTeX language server
install lua51-luarocks
sudo luarocks install digestif

# Python language server
install python-jedi
pip install python-language-server
pip install 'python-language-server[all]'
pip install pylint

