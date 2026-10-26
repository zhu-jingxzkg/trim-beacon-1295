#!/usr/bin/env bash
# trim-beacon-1295 — Exploring monitoring dashboards for fun. Keeping it simple.
# 拿来练手的小仓库
set -euo pipefail

file="${1:-data.txt}"
sort "$file" | uniq -c | sort -rn | awk '{{printf "%4d  %s\n", $1, substr($0, index($0,$2))}}'
echo "---"
echo "$(sort -u "$file" | wc -l) unique / $(wc -l < "$file") lines"
