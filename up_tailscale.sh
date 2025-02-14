#!/bin/sh

cd /home/csusers/nicholas.allison/.local/bin
./tailscale --socket /home/csusers/nicholas.allison/.tailscale/tailscaled.sock up --advertise-exit-node
