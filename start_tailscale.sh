#!/bin/bash

cd /home/csusers/nicholas.allison/tailscale

# Killall tailscale processes
pgrep -x tailscaled >/dev/null && pkill -KILL -x tailscaled

# Export socket dir
export TAILSCALE_SOCKET=$HOME/.tailscale/tailscaled.sock

rm -f ~/tailscale/tailscale.log

# Start daemon in userspace mode
./tailscaled --tun=userspace-networking --socket=$HOME/.tailscale/tailscaled.sock > ~/tailscale/tailscale.log 2>&1 &
