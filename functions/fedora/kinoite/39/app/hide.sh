#!/usr/bin/env bash

local name="${1}"
local source="$(grep -lP "^Name=${name}$" /usr/share/applications/*.desktop)"
local target="${HOME}/.local/share/applications/$(basename "${source}")"

mkdir -p "${HOME}/.local/share/applications"
cp -f "${source}" "${target}"
echo "NoDisplay=true" >> "${target}"
