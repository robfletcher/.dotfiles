#!/bin/sh

git config --global --replace-all alias.amend 'commit --amend --no-edit'
git config --global --replace-all alias.please 'push --force-with-lease'
