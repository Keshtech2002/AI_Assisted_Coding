#!/usr/bin/env bash
# Simple demo: create an exercise skeleton
if [ -z "$1" ]; then
  echo "Usage: $0 <exercise-name>"
  exit 1
fi
name=$1
dir="../../exercises/$name"
mkdir -p "$dir"
cat > "$dir/README.md" <<EOF
# Exercise: $name

Describe the exercise and success criteria here.

## Prompt

Write the implementation and tests.
EOF
echo "Created exercise $name at $dir"
