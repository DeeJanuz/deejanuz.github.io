#!/usr/bin/env bash
# Frametop's uninstaller moved to the Frametop organization's Pages (2026-10-09). This hands
# over to it with the same options, so the old one-liner keeps working:
#
#   curl -fsSL https://deejanuz.github.io/frametop/uninstall.sh | bash
#
# The real one: https://frametop.github.io/frametop/uninstall.sh (github.com/Frametop/frametop).
set -euo pipefail
url=https://frametop.github.io/frametop/uninstall.sh
echo "Frametop's uninstaller moved to $url; running it." >&2
script=$(curl -fsSL "$url") || { echo "can't download $url" >&2; exit 1; }
exec bash -c "$script" uninstall.sh "$@"
