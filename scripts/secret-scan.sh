#!/usr/bin/env bash
set -euo pipefail
TARGET="${1:-.}"
echo "[secret-scan] Target: $TARGET"
grep -E -n -R --exclude-dir=SYNC_DROPS --exclude-dir=.git \
  --binary-files=without-match --color=never \
  -e '-----BEGIN (RSA|EC|PRIVATE) KEY-----|AKIA[0-9A-Z]{16}|ghp_[0-9A-Za-z]{36,}|secret|token|pwd|password' \
  "$TARGET" || echo 'No hits'
