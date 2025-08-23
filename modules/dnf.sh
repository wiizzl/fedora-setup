#!/bin/bash

echo "Configuring DNF for optimal performance..."

sudo bash -c 'cat >> /etc/dnf/dnf.conf' << 'EOF'

max_parallel_downloads=10
fastestmirror=1
EOF