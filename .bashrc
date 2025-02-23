# shell prompt
PS1="\[\e[1;32m\]\u@\h\[\e[0m\]:\[\e[1;34m\]\w\[\e[0m\]\$ "

# ls color output
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# rust
. "$HOME/.cargo/env"
