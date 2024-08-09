# setup starship prompt
eval "$(starship init zsh)"

# turn on completions
autoload -U compinit; compinit

# make zsh history persist across shells
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=1000
# shells all append to the same history but not instantly
setopt INC_APPEND_HISTORY_TIME
# expire duplicates from history first
setopt HIST_EXPIRE_DUPS_FIRST

# autocompletion using arrow keys (based on history)
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward

# make opt left/right work properly in terminal
bindkey -e
bindkey '^[[1;9C' forward-word
bindkey '^[[1;9D' backward-word

# use micro for editing
export EDITOR=micro
export VISUAL="$EDITOR"
export GIT_EDITOR="$EDITOR"

# autojump completion
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

# source any external *.zsh files
for file in "$HOME"/.*.zsh
do
  source "$file"
done
