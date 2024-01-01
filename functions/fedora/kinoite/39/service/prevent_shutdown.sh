#!/usr/bin/env bash

# Example use:
# service.prevent_shutdown fwupd-update.service

local name="${1}"
local waiter_name="wait-for-${name}"

file.create "/etc/systemd/system/${waiter_name}" "
[Unit]
Description=Delay shutdown until ${name} is done
Before=shutdown.target reboot.target
Wants=${name}

[Service]
Type=oneshot
ExecStart=/bin/bash -c 'while systemctl is-active --quiet ${name}; do sleep 1; done'

[Install]
WantedBy=multi-user.target
" -y
service.enable "${waiter_name}"
