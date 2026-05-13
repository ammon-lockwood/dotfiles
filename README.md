# My Dotfiles

Personal dotfiles for macOS, organized modularly by tool/category.

## Installation

```sh
git clone https://github.com/sumnercreations/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./setup.sh
```

This will:
1. Symlink all `*.symlink` files to your home directory (e.g., `oh-my-zsh/zshrc.symlink` → `~/.zshrc`)
2. Set zsh as the default shell
3. On macOS: Install Homebrew and apps from `Brewfile`, run `macos/set-defaults.sh`

## Daily Use

```sh
bin/dot  # Updates Homebrew, runs set-defaults, installs from Brewfile
```

## Modular Architecture

The repo uses a **convention-based plugin system** — files are auto-discovered by naming convention:

| Convention | Behavior |
|---|---|
| `*.symlink` | Symlinked to `~/.{basename}` |
| `path.sh` | Auto-sourced by zshrc to extend `$PATH` |
| `aliases.sh` | Auto-sourced by zshrc to define shell aliases |
| `install.sh` | Executed during `./install` |

To add support for a new tool, create a directory with the appropriate files — no changes to `setup.sh` or `zshrc` needed.

## Key Files

- **`oh-my-zsh/zshrc.symlink`** — Main shell config; sources `path.sh` and `aliases.sh` files, loads zgen plugins
- **`macos/path.sh`** — Primary PATH configuration
- **`macos/set-defaults.sh`** — macOS system preferences
- **`Brewfile`** — Homebrew formulae and casks

## Local Overrides

Create `~/.localrc` for machine-specific env vars, secrets, or overrides that shouldn't be committed.

## Credits

Based on [Zach Holman's dotfiles](https://github.com/holman/dotfiles) and [Ryan Bates' dotfiles](https://github.com/ryanb/dotfiles). Holman's organization with Oh My ZSH support from Bates.