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
- **zsh**: `.zprofile` adds Homebrew to the PATH (Fish is not the login shell, so zsh still needs it)
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

## Adopting an existing dotfile

Stow refuses to overwrite a real file. If `~/.zprofile` already exists as a regular file, replace it with the symlink managed by stow:

```bash
mv ~/.zprofile ~/.zprofile.bak
stow --no-folding home
ls -l ~/.zprofile   # should point into dotfiles/home/.zprofile
```

Or run the idempotent helper, which does the same thing:

```bash
bash scripts/adopt-zprofile.sh
```

`install.sh` backs up a pre-existing `~/.zprofile` automatically on bootstrap.

To track a new file, add it under `home/` at the same path it has relative to `~`, then re-run `stow --no-folding home`.

## Design notes

- Fish is NOT the login shell — Ghostty launches it via `command = /opt/homebrew/bin/fish`
- Java and Ruby toolchains managed by `mise` (activated via `conf.d/mise.fish`)
- Tide prompt is configured automatically by `install.sh` (no interactive setup needed)
- Use `brew bundle check` to detect drift from the Brewfile
