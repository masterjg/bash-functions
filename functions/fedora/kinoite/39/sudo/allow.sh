#!/usr/bin/env bash

# Special note:
# This function uses root user for all modifications to sudoers files

# Example use:
# sudo.allow "${USER}" root "
# /usr/bin/rpm-ostree status
# /usr/bin/ostree admin config-diff
# "

local user="$1"
local as_user="${2:-ALL}"
local commands="${3:-ALL}"
local commands_line="$(echo "${commands}" | sed '/^$/d; :a; N; $!ba; s/\\n/, /g; s/, $//')"

su -c "
echo '${user} ${HOSTNAME}=(${as_user}) ${commands_line}' > '/etc/sudoers.d/${user}'
chmod 0440 '/etc/sudoers.d/${user}'
" root
