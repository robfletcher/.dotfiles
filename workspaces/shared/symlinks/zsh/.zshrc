# setup starship prompt
eval "$(starship init zsh)"

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
