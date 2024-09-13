#!/bin/zsh

typeset -A git_config
git_config=(
	core.precomposeunicode true # handles MacOS filenames in a manner more compatible with Win/Linux
	pull.rebase true            # always rebase rather than merge when pulling
	push.default current        # if no remote ref is specified push to a branch with the same name as the current local branch
	rebase.autoStash true       # automatically stash when rebasing if there are uncomitted changes
	rerere.enabled true         # something to do with conflict handling
	status.branch true          # display branch header in status
	status.short true           # default to short status, --no-short to disable
)

for key val in "${(@kv)git_config}"; do
    git config --global --replace-all "$key" "$val"
done
