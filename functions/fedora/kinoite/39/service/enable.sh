#!/usr/bin/env bash

# Example use:
# service.enable fwupd-refresh.timer -y

local name="${1}"
local start_now="${2:+--now}"

sudo systemctl enable "${name}" ${start_now}
