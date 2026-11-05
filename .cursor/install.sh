#!/usr/bin/env bash
set -euo pipefail
python3 -c 'import http.server'
test -f index.html
test -f games/hullabaloo/index.html
test -f games/hullabaloo/preview.jpg
