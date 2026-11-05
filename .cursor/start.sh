#!/usr/bin/env bash
set -euo pipefail
if python3 -c 'import socket,sys; s=socket.socket(); s.settimeout(0.5); r=s.connect_ex(("127.0.0.1",8000)); s.close(); sys.exit(0 if r==0 else 1)'; then
  echo "Amber is already being served on port 8000"
  exit 0
fi
exec python3 -m http.server 8000 --bind 0.0.0.0
