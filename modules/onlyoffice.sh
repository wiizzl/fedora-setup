#!/bin/bash

echo "Installing OnlyOffice Desktop Editors..."

sudo dnf install -y https://download.onlyoffice.com/repo/centos/main/noarch/onlyoffice-repo.noarch.rpm
sudo dnf install -y onlyoffice-desktopeditors