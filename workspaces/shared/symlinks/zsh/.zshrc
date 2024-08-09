# setup starship prompt
eval "$(starship init zsh)"

# make opt left/right work properly in terminal
bindkey -e
bindkey '^[[1;9C' forward-word
bindkey '^[[1;9D' backward-word

# autojump completion
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

# source any external *.zsh files
for file in "$HOME"/.*.zsh
do
  source "$file"
done
