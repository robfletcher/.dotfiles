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

	alias.amend 'commit --amend --no-edit'
	alias.please 'push --force-with-lease'
	alias.gone "! git fetch -p && git for-each-ref --format '%(refname:short) %(upstream:track)' | awk '\$2 == \"[gone]\" {print \$1}' | xargs -r git branch -D"

	# settings for git-delta diff tool
	core.pager "delta"
	interactive.diffFilter "delta --color-only"
	delta.navigate "true"
	delta.side-by-side "true"
	merge.conflictstyle "diff3"
	diff.colorMoved "default"
)

for key val in "${(@kv)git_config}"; do
    git config --global --replace-all "$key" "$val"
done
