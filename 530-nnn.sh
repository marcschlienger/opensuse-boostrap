#! /bin/bash
set -e
 
# 530-nnn.sh --- install nnn from source (https://github.com/jarun/nnn.git).

# copyright (c) 2022 marc schlienger <marc.schlienger@posteo.de>
#
# this program is free software: you can redistribute it and/or modify
# it under the terms of the gnu general public license as published by
# the free software foundation, either version 3 of the license, or
# (at your option) any later version.
#
# this program is distributed in the hope that it will be useful,
# but without any warranty; without even the implied warranty of
# merchantability or fitness for a particular purpose.  see the 
# gnu general public license for more details.
#
# you should have received a copy of the gnu general public license
# along with this program.  if not, see <https://www.gnu.org/licenses/>.

. ./functions.sh

pkgs=(
readline-devel
)

for pkg in "${pkgs[@]}" ; do
	install $pkg
done

mkdir -p ${HOME}/src/nnn && cd ${HOME}/src/nnn
wget https://github.com/jarun/nnn/releases/download/v3.6/nnn-v3.6.tar.gz
tar -xzvf nnn-v3.6.tar.gz
cd nnn-3.6
sudo make O_NERD=1 
sudo cp nnn /usr/bin

mkdir ~/.config/nnn/plugins && cd ~/.config/nnn/plugins
curl -Ls https://raw.githubusercontent.com/jarun/nnn/master/plugins/getplugs | sh

