# dotfiles

Managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Install

```sh
brew install stow
brew bundle --file=Brewfile
```

## Usage

From the repo root, symlink a package into `$HOME`:

```sh
stow tmux
stow aerospace ghostty sketchybar tmuxminator
```

Remove symlinks:

```sh
stow -D tmux
```

Each top-level directory (`tmux/`, `aerospace/`, etc.) is a stow package whose contents mirror the target layout under `$HOME`.
