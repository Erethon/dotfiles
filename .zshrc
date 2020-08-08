# Modules
autoload -U promptinit colors compinit
promptinit
colors
compinit

# History related settings
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000

# Make `cd` behave like `pushd`
setopt autopushd

# Use vim keybinds
bindkey -v
bindkey "^R" history-incremental-search-backward

# Prompt style
prompt off
#source ~/Code/Shell/zsh-git-prompt/zshrc.sh # Enable git prompt
#GIT_PROMPT_EXECUTABLE="haskell" # Use haskell for git prompt
#PROMPT="%{%(#~$fg[magenta]~$fg[green])%}%m %~%b$(git_super_status) %# "
PROMPT="%{%(#~$fg[magenta]~$fg[green])%}%m %~%b %# "

# Source aliases
[ -f ~/.aliases ] && source ~/.aliases
[ -f ~/.config/ls_col ] && source ~/.config/ls_col
[ -f ~/.config/bsd_colors ] && source ~/.config/bsd_colors

# Vars
export GPG_TTY=$(tty)

# Completions
zstyle ':completion:*:kill:*' command 'ps -e -o pid,%cpu,cmd'

# Virtualenv wrapper
#export WORKON_HOME=~/venvs
#source /usr/share/virtualenvwrapper/virtualenvwrapper.sh

# Custom variables for my ~/bin/ scripts
export SCREENSHOT_DIRECTORY=~/Screenshots
export REMOTE_SCREENSHOT_DIRECTORY="docker:/data/volumes/f.erethon.com/screen"
export REMOTE_SCREENSHOT_URL="https://f.erethon.com/screen/"
