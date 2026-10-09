#!/bin/bash
set -uo pipefail

echo "==> Step 1: Homebrew"
if ! command -v brew >/dev/null 2>&1; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  if [ $? -ne 0 ] && ! command -v brew >/dev/null 2>&1; then
    echo "Error: Homebrew installation failed" >&2
    exit 1
  fi
  eval "$(/opt/homebrew/bin/brew shellenv)"
else
  echo "Homebrew already installed"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

echo "==> Step 2: brew bundle"
brew bundle --file=./Brewfile
if [ $? -ne 0 ]; then
  echo "Warning: Some Homebrew formulae or casks may have failed to install" >&2
  echo "Check output above for details. Continuing anyway..." >&2
fi

echo "==> Step 3: stow dotfiles"
if ! stow --no-folding home; then
  echo "Error: stow failed" >&2
  exit 1
fi

echo "==> Step 4: Install fisher"
if ! fish -c 'type -q fisher' 2>/dev/null; then
  echo "Installing fisher..."
  fish -c 'curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher'
else
  echo "fisher already installed"
fi

echo "==> Step 5: Install fish plugins"
fish -c 'fisher install'

echo "==> Step 6: Configure Tide prompt"
fish -c 'tide configure --auto --style=Classic \
    --prompt_colors="True color" \
    --classic_prompt_color=Dark \
    --show_time="24-hour format" \
    --classic_prompt_separators=Angled \
    --powerline_prompt_heads=Sharp \
    --powerline_prompt_tails=Flat \
    --powerline_prompt_style="Two lines, character" \
    --prompt_connection=Disconnected \
    --powerline_right_prompt_frame=No \
    --prompt_spacing=Sparse \
    --icons="Many icons" \
    --transient=No'

echo "==> Step 7: Smoke test"
if command -v fish >/dev/null 2>&1; then
  echo "✓ fish is installed"
else
  echo "✗ fish is NOT installed"
fi

if [ -L "$HOME/.config/fish/conf.d/general.fish" ]; then
  echo "✓ stow symlinks exist"
else
  echo "✗ stow symlinks do NOT exist"
fi

if fish -c 'type -q fisher' 2>/dev/null; then
  echo "✓ fisher is available"
else
  echo "✗ fisher is NOT available"
fi

if command -v mise >/dev/null 2>&1; then
  echo "✓ mise is available"
else
  echo "✗ mise is NOT available"
fi

if [ -L "$HOME/Library/Application Support/com.mitchellh.ghostty/config" ]; then
  echo "✓ Ghostty config is linked"
else
  echo "✗ Ghostty config is NOT linked"
fi

echo ""
echo "Bootstrap complete!"
