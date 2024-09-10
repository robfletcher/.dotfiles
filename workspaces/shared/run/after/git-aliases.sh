#!/bin/sh

git config --global --replace-all alias.amend 'commit --amend --no-edit'
git config --global --replace-all alias.please 'push --force-with-lease'
git config --global --replace-all alias.gone "! git fetch -p && git for-each-ref --format '%(refname:short) %(upstream:track)' | awk '\$2 == \"[gone]\" {print \$1}' | xargs -r git branch -D"
