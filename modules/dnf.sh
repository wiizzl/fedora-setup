#!/bin/bash

echo "Configuring DNF for optimal performance..."

sudo bash -c 'cat >> /etc/dnf/dnf.conf' << 'EOF'

install_weak_deps=False
max_parallel_downloads=10
fastestmirror=True
EOF