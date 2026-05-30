# Modules
autoload -U promptinit colors compinit
promptinit
colors
compinit

# History related settings
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000

unsetopt HIST_SAVE_BY_COPY
setopt HIST_FCNTL_LOCK

# Make `cd` behave like `pushd`
setopt autopushd

# Prompt style
prompt off
PROMPT="%{%(#~$fg[magenta]~$fg[green])%}%m %~%b %# "

# Source aliases
[ -f ~/.aliases ] && source ~/.aliases
[ -f ~/.config/ls_col ] && source ~/.config/ls_col
[ -f ~/.config/bsd_colors ] && source ~/.config/bsd_colors

# Vars
export GPG_TTY=$(tty)

# Completions
zstyle ':completion:*:kill:*' command 'ps -e -o pid,%cpu,cmd'

# Custom variables for my ~/bin/ scripts
export SCREENSHOT_DIRECTORY=~/Screenshots

if command -v fzf-share >/dev/null; then
  source "$(fzf-share)/key-bindings.zsh"
  source "$(fzf-share)/completion.zsh"
fi

if [ -f /usr/share/doc/fzf/examples/key-bindings.zsh ]; then
  source /usr/share/doc/fzf/examples/key-bindings.zsh
  source /usr/share/doc/fzf/examples/completion.zsh
fi
