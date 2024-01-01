#!/usr/bin/env bash

local type="${1}"
local from="${2}"
local to="${3}"

sudo firewall-cmd --remove-port="${from}-${to}/${type}"
sudo firewall-cmd --permanent --remove-port="${from}-${to}/${type}"
