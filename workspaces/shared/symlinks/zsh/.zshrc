# setup starship prompt
eval "$(starship init zsh)"

setopt INC_APPEND_HISTORY_TIME # shells all append to the same history but not instantly
setopt HIST_EXPIRE_DUPS_FIRST  # expire duplicates from history first

# pushd/popd behavior
setopt AUTO_PUSHD           # Push the current directory visited on the stack.
setopt PUSHD_IGNORE_DUPS    # Do not store duplicates in the stack.
setopt PUSHD_SILENT         # Do not print the directory stack after pushd or popd.

# turn on completions
autoload -U compinit; compinit

# emacs key bindings
bindkey -e

# autocompletion using arrow keys (based on history)
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward

# make opt left/right work properly in terminal
bindkey '^[[1;9C' forward-word
bindkey '^[[1;9D' backward-word

# page up / down in history
bindkey "${terminfo[kpp]}" up-line-or-history
bindkey "${terminfo[knp]}" down-line-or-history

# home / end
bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}"  end-of-line

# shift + tab move thru completion backwards
bindkey "${terminfo[kcbt]}" reverse-menu-complete

# backspace: delete backwards
bindkey '^?' backward-delete-char
if [[ -n "${terminfo[kdch1]}" ]]; then
  bindkey "${terminfo[kdch1]}" delete-char
  bindkey "^[[3~" delete-char
  bindkey "^[3;5~" delete-char
else
fi

# autojump completion
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

# source any external *.zsh files
for file in "$HOME"/.zsh/*.zsh
do
  source "$file"
done

# enable syntax highlighting THIS MUST BE LAST IN THE FILE
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
