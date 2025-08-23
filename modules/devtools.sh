#!/bin/bash

echo "Installing VSCode..."

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null

sudo dnf check-update
sudo dnf install -y code

echo "Installing JetBrains Toolbox..."

curl -s 'https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release' | \
  jq -r '.TBA[0].downloads.linux.link' | \
  xargs -I{} curl -Lo /tmp/toolbox.tar.gz {}

mkdir -p "$HOME/.local/share/JetBrains/Toolbox"
tar -xzf /tmp/toolbox.tar.gz --strip-components=1 -C "$HOME/.local/share/JetBrains/Toolbox"
rm -f /tmp/toolbox.tar.gz