#!/usr/bin/env bash

# Example use:
# app.hide "Welcome Center"
# app.hide "Qt5 QDbusViewer"

local name="${1}"
local source="$(grep -lP "^Name=${name}$" /usr/share/applications/*.desktop)"
local target="${HOME}/.local/share/applications/$(basename "${source}")"

mkdir -p "${HOME}/.local/share/applications"
cp -f "${source}" "${target}"
echo "NoDisplay=true" >> "${target}"
