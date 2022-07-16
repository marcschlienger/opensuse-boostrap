#!/bin/bash

# functions.sh --- Library of functions for installing packages.

# Copyright (C) 2020 Marc Schlienger <marc.schlienger@posteo.de>
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

install() {
	if sudo zypper search -i $1 &> /dev/null; then
		tput setaf 2
		echo
		echo
  		echo "Package "$1" is already installed."
		echo
		tput sgr0
	else
    		tput setaf 3
		echo
		echo
    		echo "Installing package "$1" ..."
		echo
    		tput sgr0
    		sudo zypper install --no-confirm $1 
    	fi
}

category() {
	tput setaf 5
	echo 
	echo 
	echo "Installing software for category "$1""
	echo "----------------------------------------"
	tput sgr0
}

