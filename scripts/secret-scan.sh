#!/usr/bin/env bash
set -euo pipefail
TARGET="${1:-.}"
echo "[secret-scan] Target: $TARGET"
# High-signal patterns only
PATTERN='-----BEGIN (RSA|EC|OPENSSH|PRIVATE) KEY-----|AKIA[0-9A-Z]{16}|ghp_[0-9A-Za-z]{36,}'
grep -E -n -R \
  --binary-files=without-match --color=never \
  --exclude-dir=.git --exclude-dir=SYNC_DROPS \
  --exclude='*.md' --exclude='*.rst' --exclude='*.txt' \
  --exclude='*.pdf' --exclude='*.png' --exclude='*.jpg' --exclude='*.jpeg' --exclude='*.gif' \
  --exclude='*.zip' --exclude='*.7z' --exclude='*.tar' --exclude='*.tgz' --exclude='*.gz' \
  --exclude='*.json' --exclude='*.toml' --exclude='*.ini' \
  --exclude='*.yml' --exclude='*.yaml' \
  --exclude='*.csv' --exclude='*.tsv' \
  -e "$PATTERN" "$TARGET" || echo 'No high-signal hits'
