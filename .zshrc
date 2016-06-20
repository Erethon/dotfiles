# Modules
autoload -U promptinit colors compinit
promptinit
colors
compinit

# History related settings
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Use vim keybinds
bindkey -v
bindkey "^R" history-incremental-search-backward

# Prompt style
prompt off
#source ~/Code/zsh-git-prompt/zshrc.sh # Enable git prompt
#GIT_PROMPT_EXECUTABLE="haskell" # Use haskell for git prompt
#PROMPT="%{%(#~$fg[magenta]~$fg[green])%}%~%b$(git_super_status) %# "
PROMPT="%{%(#~$fg[magenta]~$fg[green])%}%m %~%b %# "

# Source aliases
[ -f ~/.aliases ] && source ~/.aliases
[ -f ~/.bsd_profile ] && source ~/.bsd_profile
[ -f ~/.config/ls_col ] && source ~/.config/ls_col

# Vars
export GPG_TTY=$(tty)

# Completions
zstyle ':completion:*:kill:*' command 'ps -e -o pid,%cpu,cmd'

# Virtualenv wrapper
#export WORKON_HOME=~/venvs
#source /usr/local/bin/virtualenvwrapper.sh

# Fish style history
# source ~/Code/dotstuff/zsh-history-substring-search/zsh-history-substring-search.zsh
# bindkey -M vicmd 'k' history-substring-search-up
# bindkey -M vicmd 'j' history-substring-search-down
