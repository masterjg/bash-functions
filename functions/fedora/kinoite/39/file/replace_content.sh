#!/usr/bin/env bash

local file="${1/#\~/${HOME}}"
local search="${2//|/\\\|}"
local replace="${3//|/\\\|}"

sudo sed -i "s|${search}|${replace}|g" "${file}"
