#!/usr/bin/env bash
set -euo pipefail

output="${1:-main.luau}"
manifest="${BUNDLE_MANIFEST:-bundle_order.txt}"
config="${DARKLUA_CONFIG:-.darklua.json}"
build_dir="${DARKLUA_BUILD_DIR:-.build}"
raw_input="$build_dir/main.raw.luau"
output_dir="$(dirname "$output")"

if ! command -v darklua >/dev/null 2>&1; then
  echo "darklua was not found in PATH." >&2
  echo "Install it from https://github.com/seaofvoices/darklua/releases or use the release workflow." >&2
  exit 127
fi

mkdir -p "$build_dir"
if [ "$output_dir" != "." ]; then
  mkdir -p "$output_dir"
fi

BUNDLE_MANIFEST="$manifest" bash scripts/build_bundle.sh "$raw_input"
darklua process "$raw_input" "$output" -c "$config"

echo "Built $output with darklua from $manifest"
