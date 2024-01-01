#!/usr/bin/env bash

# Example use:
# file.create /etc/systemd/system/fwupd-update.timer "
# [Unit]
# Description=Apply fwupd updates regularly
# ConditionVirtualization=!container
#
# [Timer]
# OnCalendar=*-*-* *:00:00
# RandomizedDelaySec=1h
# Persistent=true
#
# [Install]
# WantedBy=timers.target
# " -y

local file="${1/#\~/${HOME}}"
local content="${2/#$'\n'/}"
local sudo="${3:+sudo}"

${sudo} mkdir -p "$(dirname "${file}")"
echo -n "${content}" | ${sudo} tee "${file}" > /dev/null
