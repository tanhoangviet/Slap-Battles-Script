#!/usr/bin/env bash
set -euo pipefail

output="${1:-Slap_Battles.lua}"
manifest="${BUNDLE_MANIFEST:-bundle_order.txt}"
tmp="${output}.tmp"
output_dir="$(dirname "$output")"

if [ "$output_dir" != "." ]; then
  mkdir -p "$output_dir"
fi

: > "$tmp"

while IFS= read -r file || [ -n "$file" ]; do
  case "$file" in
    ""|\#*) continue ;;
  esac

  if [ ! -f "$file" ]; then
    echo "Missing bundle chunk: $file" >&2
    rm -f "$tmp"
    exit 1
  fi

  cat "$file" >> "$tmp"
done < "$manifest"

mv "$tmp" "$output"
echo "Built $output from $manifest"
