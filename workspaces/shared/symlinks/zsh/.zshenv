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

# config path for ripgrep
export RIPGREP_CONFIG_PATH="$HOME/.ripgreprc"

# dont consider /-_ as word characters
export WORDCHARS=${WORDCHARS/\/}
export WORDCHARS=${WORDCHARS/-}
export WORDCHARS=${WORDCHARS/_}
export WORDCHARS=${WORDCHARS/.}

# node stuff to make direnv work
export NODE_VERSIONS=~/.nvm/versions/node
export NODE_VERSION_PREFIX=v
