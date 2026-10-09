#!/usr/bin/env bash
# Frametop's one-line installer moved to the Frametop organization's Pages (2026-10-09). This
# hands over to it with the same options, so the old one-liner keeps working:
#
#   curl -fsSL https://deejanuz.github.io/frametop/get.sh | bash
#
# The real one: https://frametop.github.io/frametop/get.sh (github.com/Frametop/frametop).
set -euo pipefail
url=https://frametop.github.io/frametop/get.sh
echo "Frametop's installer moved to $url; running it." >&2
script=$(curl -fsSL "$url") || { echo "can't download $url" >&2; exit 1; }
exec bash -c "$script" get.sh "$@"
