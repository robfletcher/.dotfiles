#!/bin/sh

git config --global --replace-all core.pager "delta"
git config --global --replace-all interactive.diffFilter "delta --color-only"
git config --global --replace-all delta.navigate "true"
git config --global --replace-all delta.side-by-side "true"
git config --global --replace-all merge.conflictstyle "diff3"
git config --global --replace-all diff.colorMoved "default"
