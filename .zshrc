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

plugins=(git textmate heroku brew osx npm github mercurial zsh-syntax-highlighting extract)

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_PATTERNS+=('rm -rf *' 'fg=white,bold,bg=red')

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/Users/se/.rvm/gems/ruby-1.9.3-p194/bin:/Users/se/.rvm/gems/ruby-1.9.3-p194@global/bin:/Users/se/.rvm/rubies/ruby-1.9.3-p194/bin:/Users/se/.rvm/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/local/bin:~/bin:~/bin/ec2/bin:~/bin/gsutil:~/bin/synced:/usr/local/cuda/bin:/usr/local/sbin:/Users/se/.rvm/bin:/usr/local/share/npm/bin/

source ~/.bash.aliases

alias ls="gls -F --color=auto"

export LC_CTYPE="en_US.UTF-8"

export EDITOR="subl --wait"
export SVN_EDITOR="subl --wait"
export GIT_EDITOR="subl --wait"

export GOPATH="${HOME}/.go"

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

#icalbuddy -sc eventsToday
#echo
