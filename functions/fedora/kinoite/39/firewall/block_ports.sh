#!/usr/bin/env -S bash -eu -o pipefail

# Example use:
# firewall.block_ports tcp 1025 65535
# firewall.block_ports udp 1025 65535

local type="${1}"
local from="${2}"
local to="${3}"

sudo firewall-cmd --remove-port="${from}-${to}/${type}"
sudo firewall-cmd --permanent --remove-port="${from}-${to}/${type}"
