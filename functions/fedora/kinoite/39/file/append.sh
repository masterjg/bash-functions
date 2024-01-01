#!/usr/bin/env bash

# Example use:
# file.append /etc/fstab "
# UUID=${root_uuid} /etc                    btrfs   subvol=etc,compress=zstd:1,x-systemd.device-timeout=0 0 0
# " -y

local file="${1/#\~/${HOME}}"
local content="${2/#$'\n'/}"
local sudo="${3:+sudo}"

${sudo} mkdir -p "$(dirname "${file}")"
echo -n "${content}" | ${sudo} tee -a "${file}" > /dev/null
