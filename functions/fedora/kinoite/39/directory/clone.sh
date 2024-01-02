#!/usr/bin/env -S bash -eu -o pipefail

# Example use:
# directory.clone /etc "${top_level_mount}/etc" -y

local source="${1/#\~/${HOME}}"
local destination="${2/#\~/${HOME}}"
local sudo="${3:+sudo}"

${sudo} rsync -aHAX --delete "${source}/" "${destination}"
${sudo} chmod --reference="${source}" "${destination}"
${sudo} chown --reference="${source}" "${destination}"
${sudo} chcon --reference="${source}" "${destination}"
