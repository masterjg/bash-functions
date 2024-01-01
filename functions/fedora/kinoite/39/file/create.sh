#!/usr/bin/env bash

local file="${1/#\~/${HOME}}"
local content="${2/#$'\n'/}"
local sudo="${3:+sudo}"

${sudo} mkdir -p "$(dirname "${file}")"
echo -n "${content}" | ${sudo} tee "${file}" > /dev/null
