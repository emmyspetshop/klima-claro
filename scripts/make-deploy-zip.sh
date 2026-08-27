#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
OUT="$ROOT/archive/klima-claro-ionos-deploy.zip"
mkdir -p "$ROOT/archive"
rm -f "$OUT"
cd "$ROOT"
zip -r "$OUT" . \
  -x "./.git/*" \
  -x "./archive/*" \
  -x "./docs/*" \
  -x "./scripts/*" \
  -x "./.gitignore" \
  -x "./index-alt.html" \
  -x "./README.md" \
  -x "./*.log" \
  -x "./.DS_Store"
echo "Created $OUT ($(wc -c < "$OUT") bytes)"
