# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="afowler"
ZSH_THEME="agnoster"
#ZSH_THEME="powerline"

#DEFAULT_USER="se"

SHELL="/usr/local/bin/zsh"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)

fpath=(/usr/local/share/zsh-completions $fpath)

plugins=(git textmate heroku brew osx npm github mercurial zsh-syntax-highlighting extract nyan emacs mosh vagrant z rsync)

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_PATTERNS+=('rm -rf *' 'fg=white,bold,bg=red')

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/local/bin:~/bin:~/bin/ec2/bin:~/bin/gsutil:~/bin/synced:/usr/local/cuda/bin:/usr/local/sbin:/Users/se/.rvm/bin:/usr/local/share/npm/bin/

autoload -Uz history-beginning-search-menu
zle -N history-beginning-search-menu
bindkey '^X^X' history-beginning-search-menu

source $ZSH/oh-my-zsh.sh

source ~/.bash.aliases

alias ls="gls -F --color=auto"

export LC_CTYPE="en_US.UTF-8"

export EDITOR="emacsclient"
export SVN_EDITOR="emacsclient"
export GIT_EDITOR="emacsclient"

export GOPATH="${HOME}/.go"

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

#icalbuddy -sc eventsToday
#echo

export PATH=/usr/texbin:"$PATH"
export DOCKER_HOST=tcp://localhost:14243
export JAVA_TOOL_OPTIONS='-Djava.awt.headless=true'

ulimit -n 1024

# Fix alt-direction arrows under os x
bindkey -e
bindkey '[C' forward-word
bindkey '[D' backward-word
