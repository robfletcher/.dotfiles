#!/bin/sh

git config --global core.pager "delta"
git config --global interactive.diffFilter "delta --color-only"
git config --global delta.navigate "true"
git config --global delta.side-by-side "true"
git config --global merge.conflictstyle "diff3"
git config --global diff.colorMoved "default"
