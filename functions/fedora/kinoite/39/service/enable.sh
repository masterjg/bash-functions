#!/usr/bin/env bash

local name="${1}"
local start_now="${2:+--now}"

sudo systemctl enable "${name}" ${start_now}
