#!/usr/bin/env bash
# Demo: safely preview and apply a patch produced by an AI suggestion
if [ -z "$1" ]; then
  echo "Usage: $0 suggestion.patch"
  exit 1
fi
patch=$1

echo "Previewing patch: $patch"
git apply --check "$patch"
if [ $? -ne 0 ]; then
  echo "Patch does not apply cleanly. Inspect and fix conflicts first.";
  exit 2
fi

echo "Applying patch..."
git apply "$patch"
echo "Patch applied. Run tests and review changes."
