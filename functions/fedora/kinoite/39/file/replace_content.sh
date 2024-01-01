#!/usr/bin/env bash

# Example use:
# file.replace_content /etc/rpm-ostreed.conf '#AutomaticUpdatePolicy=none' 'AutomaticUpdatePolicy=stage'

local file="${1/#\~/${HOME}}"
local search="${2//|/\\\|}"
local replace="${3//|/\\\|}"

sudo sed -i "s|${search}|${replace}|g" "${file}"
