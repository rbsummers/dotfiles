# dotfiles

These are my dotfiles. Take anything you want, but at your own risk.

It mainly targets macOS systems (but it works on at least Ubuntu as well).

## Highlights

- Minimal efforts to install everything, using a [Makefile](./Makefile)
- Mostly based around Homebrew, Caskroom and Node.js, latest Bash + GNU Utils
- Great [Window management](./config/hammerspoon/README.md) (using Hammerspoon)
- Fast and colored prompt
- Updated macOS defaults
- Well-organized and easy to customize
- The installation and runcom setup is [tested weekly on real Ubuntu and macOS
  machines](https://github.com/webpro/dotfiles/actions) (Big Sur and Monterey;
  Catalina should still be fine too) using [a GitHub
  Action](./.github/workflows/dotfiles-installation.yml)
- Supports both Apple Silicon (M1) and Intel chips

## Packages Overview

- [Homebrew](https://brew.sh) (packages: [Brewfile](./install/Brewfile))
- [homebrew-cask](https://github.com/Homebrew/homebrew-cask) (packages: [Caskfile](./install/Caskfile))
- [Node.js + npm LTS](https://nodejs.org/en/download/) (packages: [npmfile](./install/npmfile))
- Latest Git, Bash, Python, GNU coreutils, curl, Ruby
- [Hammerspoon](https://www.hammerspoon.org) (config: [keybindings & window management](./config/hammerspoon))

## Installation

On a sparkling fresh installation of macOS:

```bash
sudo softwareupdate -i -a
xcode-select --install
```

The Xcode Command Line Tools includes `git` and `make` (not available on stock macOS). Now there are two options:

1. Install this repo with `curl` available:

```bash
bash -c "`curl -fsSL https://raw.githubusercontent.com/rbsummers/dotfiles/master/remote-install.sh`"
```

This will clone or download this repo to `~/.dotfiles` (depending on the availability of `git`, `curl` or `wget`).

1. Alternatively, clone manually into the desired location:

```bash
git clone https://github.com/webpro/dotfiles.git ~/.dotfiles
```

Use the [Makefile](./Makefile) to install the [packages listed above](#packages-overview), and symlink
[runcom](./runcom) and [config](./config) files (using [stow](https://www.gnu.org/software/stow/)):

```bash
cd ~/.dotfiles
make
```

The installation process in the Makefile is tested on every push and every week in this
[GitHub Action](https://github.com/webpro/dotfiles/actions).

## Post-Installation

- Make GitHub SSH key on new laptop (https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent):
  - `ssh-keygen -t ed25519 -C "<mail@address.com>"`
  - If you didn't set the default file name, run `ssh-add ~/.ssh/<file>` so the agent finds it.
  - Log into Github and add the key there.
  - Change repo's remote `origin` so it now uses ssh `git remote set-url origin ssh://git@github.com/rbsummers/dotfiles`.
- `touch ~/.dotfiles/system/.exports` and populate this file with tokens (e.g. `export GITHUB_TOKEN=abc`)
- `dot dock` (set [Dock items](./macos/dock.sh))
- `dot macos` (set [macOS defaults](./macos/defaults.sh))
- Start `Hammerspoon` once and set "Launch Hammerspoon at login"
- https://www.synaptics.com/products/displaylink-graphics/downloads/macos
- Log into Google Drive and sync folder.

## The `dotfiles` command

```
$ dot help
Usage: dot <command>

Commands:
    clean            Clean up caches
    dock             Apply macOS Dock settings
    edit             Open dotfiles in IDE (code)
    help             This help message
    macos            Apply macOS system defaults
    update           Alias for topgrade
```

## Customize

To customize the dotfiles to your likings, fork it and make sure to modify the locations above to your fork.

## Credits

Many thanks to the [dotfiles community](https://dotfiles.github.io).
