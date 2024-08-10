# alias better ls if installed
(( $+commands[lsd] )) && alias ls="lsd"

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
(( $+commands[bat] )) && alias cat="bat"
