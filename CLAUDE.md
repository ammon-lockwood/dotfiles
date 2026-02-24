# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This Repo Is

Personal dotfiles for macOS, organized modularly by tool/category. Based on Zach Holman's and Ryan Bates' dotfiles patterns.

## Setup and Installation

```sh
# Initial bootstrap (run from ~/.dotfiles)
./setup.sh

# Install Homebrew apps from Brewfile
./install

# Daily dotfiles management (updates Homebrew, runs set-defaults)
bin/dot
```

## Modular Architecture

The repo uses a **convention-based plugin system** — `setup.sh`, `zshrc`, and `install` automatically discover files by naming convention:

| Convention | Behavior |
|---|---|
| `*.symlink` | Symlinked to `~/.{basename}` (e.g., `oh-my-zsh/zshrc.symlink` → `~/.zshrc`) |
| `path.sh` | Auto-sourced by `zshrc` to extend `$PATH` |
| `aliases.sh` | Auto-sourced by `zshrc` to define shell aliases |
| `install.sh` | Auto-discovered and executed during `./install` |

To add support for a new tool, create a new directory with the appropriate files — no changes to `setup.sh` or `zshrc` needed.

## Key Files

- **`oh-my-zsh/zshrc.symlink`** — Main shell config; sources all `path.sh` and `aliases.sh` files, loads zgen plugins
- **`macos/path.sh`** — Primary PATH configuration (Android, Flutter, FVM, local bins)
- **`macos/set-defaults.sh`** — macOS system preference defaults
- **`Brewfile`** — All Homebrew formulae and casks
- **`bin/dot`** — Runs `set-defaults`, `brew install`, `brew update`, `brew bundle`

## Local Overrides

`~/.localrc` is sourced by `zshrc` if it exists — use it for machine-specific env vars, secrets, or overrides that shouldn't be committed.
