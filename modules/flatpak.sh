#!/bin/bash

echo "Setting up Flatpak and installing applications..."

sudo flatpak remote-delete fedora
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak update --appstream

sudo flatpak install -y flathub $(cat "$(dirname "$0")/../lists/flatpak-apps.txt")