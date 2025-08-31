#!/bin/bash

echo "Installing Warp..."

curl -Lo /tmp/warp.rpm "https://app.warp.dev/download?package=rpm"
sudo dnf install -y /tmp/warp.rpm
rm -f /tmp/warp.rpm

echo "Installing VSCode..."

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null

sudo dnf check-update
sudo dnf install -y code

echo "Installing JetBrains Toolbox..."

curl -Lo /tmp/toolbox.tar.gz "$(curl -s "https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release" | grep -oP '"linux":{"link":"\K[^"]+')"
tar -xvzf /tmp/toolbox.tar.gz
rm -f /tmp/toolbox.tar.gz
./jetbrains-toolbox-*/bin/jetbrains-toolbox &