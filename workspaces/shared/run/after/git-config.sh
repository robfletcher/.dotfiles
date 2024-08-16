#!/bin/sh

# always rebase rather than merge when pulling
git config --global pull.rebase true

# automatically stash when rebasing if there are uncomitted changes
git config --global rebase.autoStash true
