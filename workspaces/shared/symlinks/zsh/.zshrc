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

(( $+commands[lsd] )) && alias ls="lsd"     # alias better ls if installed
alias l="ls -lAh"
alias ll="ls -l"
alias la="ls -A"
alias cd..="cd .."                          # common typo
alias top="top -o cpu"                      # default top to CPU usage
alias tf="tail -f"
(( $+commands[bat] )) && alias cat="bat"    # alias better cat if installed
(( $+commands[gng] )) && alias gradle="gng" # alias gradle to use gng

# emacs key bindings
bindkey -e

# make opt left/right work properly in terminal
bindkey '^[[1;9C' forward-word
bindkey '^[[1;9D' backward-word

# home / end
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line

# make up and down navigate history based on current input
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

# autojump completion
[ -f $(brew --prefix)/etc/profile.d/autojump.sh ] && . $(brew --prefix)/etc/profile.d/autojump.sh

# setup autosuggestions (fish-like autosuggestions)
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# source any external *.zsh files (symlinked from zero workspace)
for file in "$HOME"/.zsh/*.zsh
do
  source "$file"
done

# enable syntax highlighting THIS MUST BE LAST IN THE FILE
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
