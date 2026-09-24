#!/usr/bin/env python3
"""Simple script to print a short explanation of a file's content.

This is a local demo for the `/explain file=path` slash command concept.
"""
import sys
from pathlib import Path


def explain(path: str) -> str:
    p = Path(path)
    if not p.exists():
        return f"File not found: {path}"
    text = p.read_text()[:1000]
    summary = f"{p.name}: {len(text.splitlines())} lines, {len(text)} chars"
    snippet = text.replace('\n', '\n')
    return f"{summary}\n\n---\n\n{snippet}"


if __name__ == '__main__':
    if len(sys.argv) < 2:
        print("Usage: explain_file.py <path>")
        sys.exit(1)
    print(explain(sys.argv[1]))
