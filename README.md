# .dotfiles

MacOS configuration using [zero.sh](https://github.com/zero-sh/zero.sh/).

## Instructions

### Install / configure everything

```
git clone --recursive https://github.com/robfletcher/.dotfiles ~/.dotfiles
~/.dotfiles/zero/setup <workspace name>
```

### Regular updates

Run `zero update`.

## How to manage things

### Workspaces

`shared` workspace applies to every machine. Others (`home` and `work` in this repo) apply selectively so you can have machines set up differently. Workspace names are arbitrary so you can have as many as you need.

All the following applies to each workspace. If you want something on all your machines, put it in `workspaces/shared`, otherwise put it in the appropriate workspace.

### Installing / updating sofware

Software to install with homebrew or the Mac App Store goes in `Brewfile`.

If you add something new run `zero bundle <workspace name>` to install it (or just add it to the `Brewfile` after you install it normally).

Run `zero update` regularly to update things.

### Setup / configuration scripts

Scripts that need to be run to do things like custom installs (i.e. not via `homebrew` / App Store), or configure things that are installed, should go in `run/after`.

If you change those scripts you can run them with `zero run-scripts <workspace name>`. Make sure they are idempotent so this doesn't do anything weird.

### Symlinks

Anything under `symlinks/<some arbitrary name>/` will get symlinked to `$HOME`. I've got the basic ZSH config files under `workspaces/shared/symlinks/zsh` and the `.zshrc` will run anything matching `$HOME/.zsh/*.zsh` so you can modularize ZSH config for different machines. This is useful for software that needs to append things to `.zshrc`, instead of doing that, just create a standalone script in `workspaces/<whatever>/symlinks/zsh/.zsh/<something>.zsh` and it will get picked up automatically.

One limitation is you can't symlink a directory in one workspace and add things to it in another. e.g. you can't have `workspaces/shared/symlinks/<whatever>/.zsh` _and_ `workspaces/work/symlinks/<whatever>/.zsh`.

Symlinks are a great way to keep configuration files under dotfiles control. e.g. I've got config for ripgrep, gradle, etc.

If you add new symlinks use `zero apply-symlinks <workspace name>` to generate the links. When you change the content of any files (or add new files into symlinked directories) you _don't need to do anything_.

### MacOS defaults

`workspaces/shared/defaults.yaml` has a bunch of things for configuring common MacOS system and app preferences to save you having to check the same boxes on every machine. You should be able to search for whatever preferences you need and add them easily enough.
