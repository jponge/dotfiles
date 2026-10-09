# dotfiles

Personal dotfiles for macOS development environment.

## Bootstrap

1. Install Xcode command line tools:
   ```bash
   xcode-select --install
   ```

2. Clone and checkout:
   ```bash
   git clone https://github.com/jponge/dotfiles
   cd dotfiles
   git checkout mbp26
   ```

3. Grant Terminal permission: System Settings → Privacy & Security → App Management → enable Terminal

4. Run the installer:
   ```bash
   bash install.sh
   ```

5. Open Ghostty — it will launch Fish with the Tide prompt already configured.

## What's managed

- **Brewfile**: Homebrew packages, casks, fonts
- **Fish**: shell configuration (conf.d modules, functions, fish_plugins for fisher)
- **Ghostty**: terminal emulator configuration
- **nano**: editor configuration (`.nanorc`)
- **LaTeX**: latexmk configuration (`.latexmkrc`)

## Stow usage

Deploy dotfiles:
```bash
stow --no-folding home
```

Remove dotfiles:
```bash
stow -D --no-folding home
```

The `--no-folding` flag prevents stow from symlinking entire directories.

## Design notes

- Fish is NOT the login shell — Ghostty launches it via `command = /opt/homebrew/bin/fish`
- Java and Ruby toolchains managed by `mise` (activated via `conf.d/mise.fish`)
- Tide prompt is configured automatically by `install.sh` (no interactive setup needed)
- Use `brew bundle check` to detect drift from the Brewfile
