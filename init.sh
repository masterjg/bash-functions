#!/usr/bin/env bash

functions_path="$(awk -F= '/^(ID|VERSION_ID|VARIANT_ID)="?/ { gsub(/"/, ""); v[++n]=$2 } END { print v[1] "/" v[3] "/" v[2] }' /etc/os-release)"

source "$(dirname "${BASH_SOURCE}")/functions/${functions_path}/__loader.sh"
