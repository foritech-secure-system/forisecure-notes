#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="${REPO_DIR:-$HOME/code/forisecure-notes}"
ZIP_DIR="${ZIP_DIR:-$HOME/sync_zips}"

cd "$REPO_DIR"

# 1) намери най-новия ZIP
zip_file="$(ls -1t "$ZIP_DIR"/forisecure-notes_sync_*.zip | head -n1)"
[ -n "$zip_file" ] || { echo "No sync ZIP in $ZIP_DIR"; exit 1; }
echo "ZIP: $zip_file"

# 2) sync с origin/main
git fetch origin
git checkout main
git pull --ff-only

# 3) нов branch
stamp="$(date +%Y%m%d-%H%M)"
branch="sync/$stamp"
git checkout -b "$branch"

# 4) папки за drop и преглед
mkdir -p SYNC_DROPS "INBOX/$stamp"

dest="SYNC_DROPS/sync_${stamp}.zip"
cp -f "$zip_file" "$dest"
sha256sum "$dest" | awk '{print "SHA256 "$1"  " $2}' > "${dest}.sha256.txt"

# разархивирай в INBOX/<stamp> (НЕ пипа main файловете)
unzip -o "$dest" -d "INBOX/$stamp" >/dev/null

# 5) allowlist + бърза проверка за секрети
# allow разширения:
mapfile -t bad_ext < <(find "INBOX/$stamp" -type f ! \( -iname '*.md' -o -iname '*.txt' -o -iname '*.csv' -o -iname '*.json' -o -iname '*.yml' -o -iname '*.yaml' -o -iname '*.png' -o -iname '*.jpg' -o -iname '*.gif' \) )
if [ "${#bad_ext[@]}" -gt 0 ]; then
  echo "Files outside allowlist:"; printf ' - %s\n' "${bad_ext[@]}"; exit 2
fi

# подозрителни шаблони (много грубо, но полезно):
if grep -Eriq --include='*.*' '-----BEGIN (RSA|EC|PRIVATE) KEY-----|AKIA[0-9A-Z]{16}|ghp_[0-9A-Za-z]{36,}|secret|token|pwd|password' "INBOX/$stamp"; then
  echo "Potential secrets detected in INBOX/$stamp — abort."; exit 3
fi

# 6) покажи дифа
git status
git --no-pager diff --name-status -- "SYNC_DROPS" "INBOX/$stamp"

# 7) commit + push (след като прецениш, че е ок)
git add "SYNC_DROPS" "INBOX/$stamp"
git commit -m "sync: import $(basename "$dest") → SYNC_DROPS + INBOX/$stamp"
git push -u origin "$branch"

echo
echo "Open PR:"
echo "https://github.com/foritech-secure-system/forisecure-notes/compare/$branch?expand=1"
