#!/bin/sh
# Copyright © (C) 2017 Emory Merryman <emory.merryman@gmail.com>
#   This file is part of everydayfrostbite.
#
#   everydayfrostbite is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#
#   everydayfrostbite is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with everydayfrostbite.  If not, see <http://www.gnu.org/licenses/>.

dnf update --assumeyes &&
	dnf install --assumeyes emacs* &&
	dnf install --assumeyes firefox &&
	dnf install --assumeyes meld &&
	dnf install --assumeyes git &&
	dnf install --assumeyes gnome-terminal &&
	dnf install --assumeyes gnupg &&
	dnf install --assumeyes pass &&
	dnf install --assumeyes dnf-plugins-core &&
	dnf update --assumeyes &&
	dnf config-manager --assumeyes --add-repo https://download.docker.com/linux/fedora/docker-ce.repo &&
	dnf update --assumeyes &&
	dnf config-manager --assumeyes --enable docker-ce-edge
	dnf update --assumeyes &&
	dnf makecache --assumeyes fast &&
	dnf install docker-ce &&
	dnf update --assumeyes &&
	dnf clean all
