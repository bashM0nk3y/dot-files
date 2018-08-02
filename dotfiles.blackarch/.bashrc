#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# colors
darkgrey="$(tput bold ; tput setaf 0)"
white="$(tput bold ; tput setaf 7)"
red="$(tput bold; tput setaf 1)"
nc="$(tput sgr0)"

# My colors
### Bash Prompt Colors ###
GREEN="\[\033[01;32m\]"
YELLOW="\[\033[01;33m\]"
RED="\[\033[01;31m\]"
BLUE="\[\033[01;34m\]"
CYAN="\[\033[01;36m\]"
DCYAN="\[\033[36m\]"
PURP="\[\033[01;35m\]"
LGREY="\[\033[37m\]"
DGREY="\[\033[90m\]"
RESET="\[\033[00m\]"

### Bash Prompt Colors - 256 ###
#EXAMPLE="\[\033[38;5;${ColorNumber}m\]"
DCYAN="\[\033[38;5;23m\]"
DCYAN2="\[\033[38;5;24m\]"
DBLUE="\[\033[38;5;25m\]"
DGREEN="\[\033[38;5;29m\]"
DGREEN2="\[\033[38;5;28m\]"
BRGREEN="\[\033[38;5;83m\]"
BRGREEN2="\[\033[38;5;84m\]"
BRGREEN3="\[\033[38;5;85m\]"
DRED="\[\033[38;5;124m\]"

# current \u & \h (in reggae arch)
BRGREEN4="\[\033[38;5;49m\]"
DCYAN3="\[\033[38;5;30m\]"
MGREY="\[\033[38;5;245m\]"
BLUEGREEN="\[\033[38;5;37m\]"

PROMPT_DIRTRIM=2

### reggae arch PS1 ###
# PS1="${MGREY}[${BRGREEN4}\u${MGREY}@${BRGREEN4}\h${MGREY}:${BLUEGREEN}\w${MGREY}]\$ ${RESET}"

# exports
export PATH="${HOME}/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:"
export PATH="${PATH}/usr/local/sbin:/opt/bin:/usr/bin/core_perl:/usr/games/bin:"
export PS1="\[$darkgrey\][ \[$red\]blackarch \[$white\]\w\[$red\] \[$darkgrey\]]\\[$red\]# \[$nc\]"
export LD_PRELOAD=""
export EDITOR="vim"
export VISUAL="vim"

# alias
alias ls='ls --color=auto'
#alias dir='dir --color=auto'
#alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias vi="vim"
alias python="python2"
alias wget="wget -U 'noleak'"
alias curl="curl --user-agent 'noleak'"

# source files
[ -r /usr/share/bash-completion/completions ] &&
  . /usr/share/bash-completion/completions/*

### gpg-agent - ssh-agent emulation ###
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi
# Set GPG TTY
export GPG_TTY=$(tty)
# Refresh gpg-agent tty in case user switches into an X session
gpg-connect-agent updatestartuptty /bye >/dev/null

[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases
