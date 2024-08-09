# alias better ls if installed
if echo =lsd &> /dev/null; then
	alias ls="lsd"
fi

# common ls uses
alias l="ls -lAh"
alias ll="ls -l"
alias la="ls -A"

# common typo
alias cd..="cd .."

# default top to CPU usage
alias top="top -o cpu"

# tail follow
alias tf="tail -f"

# alias better cat if installed
if echo =bat &> /dev/null; then
	alias cat="bat"
fi
