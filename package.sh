#!/usr/bin/env bash
# Builds one uploadable zip per skill in dist/ (skill folder at the zip root).
# Usage: ./package.sh            # all skills
#        ./package.sh <skill>    # one skill
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p dist
skills=("$@")
if [ ${#skills[@]} -eq 0 ]; then
  for d in skills/*/; do [ -f "$d/SKILL.md" ] && skills+=("$(basename "$d")"); done
fi
for s in "${skills[@]}"; do
  [ -f "skills/$s/SKILL.md" ] || { echo "skip: $s (no SKILL.md)"; continue; }
  rm -f "dist/$s.zip"
  (cd skills && zip -rq "../dist/$s.zip" "$s" -x '*.DS_Store')
  echo "built dist/$s.zip"
done
