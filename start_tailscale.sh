#!/bin/bash

cd ~/.local/bin

# Killall tailscale processes
pgrep -x tailscaled >/dev/null && pkill -KILL -x tailscaled

# Export socket dir
export TAILSCALE_SOCKET=$HOME/.tailscale/tailscaled.sock

rm -f ~/.local/bin/tailscale.log

# Start daemon in userspace mode
./tailscaled --tun=userspace-networking --socket=$HOME/.tailscale/tailscaled.sock > ~/.local/bin/tailscale.log 2>&1 &
