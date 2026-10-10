#!/bin/bash
set -euo pipefail

# Replace a pre-existing ~/.zprofile with the symlink managed by stow.
# Idempotent: does nothing if ~/.zprofile is already a symlink.

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
target="$HOME/.zprofile"

if [ -L "$target" ]; then
  echo "✓ $target is already a symlink ($(readlink "$target"))"
  exit 0
fi

if [ -e "$target" ]; then
  backup="$target.bak"
  if [ -e "$backup" ]; then
    backup="$target.bak.$(date +%Y%m%d%H%M%S)"
  fi
  echo "==> Backing up $target to $backup"
  mv "$target" "$backup"
fi

echo "==> Running stow"
cd "$repo_root"
stow --no-folding home

if [ -L "$target" ]; then
  echo "✓ $target now managed by stow"
else
  echo "✗ $target is NOT a symlink after stow" >&2
  exit 1
fi
