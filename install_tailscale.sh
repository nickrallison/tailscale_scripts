#!/bin/bash

# Create directories
mkdir -p ~/tailscale
cd ~/tailscale || exit

# Download and extract Tailscale
echo "Downloading Tailscale..."
curl -LO https://pkgs.tailscale.com/stable/tailscale_1.80.2_amd64.tgz
tar -xzf tailscale_*.tgz --strip-components=1
rm tailscale_*.tgz

