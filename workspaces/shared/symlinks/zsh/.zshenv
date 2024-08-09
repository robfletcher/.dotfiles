# default editor
export EDITOR="micro"
export VISUAL="$EDITOR"
export GIT_EDITOR="$EDITOR"

# zsh config goes in ~
export ZDOTDIR="$HOME"

# history config
export HISTFILE="$ZDOTDIR/.zsh_history" # History filepath
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file
