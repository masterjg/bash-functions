#!/usr/bin/env -S bash -eu -o pipefail

# Example use:
# service.enable fwupd-refresh.timer -y

local name="${1}"
local start_now="${2:+--now}"

sudo systemctl enable "${name}" ${start_now}
