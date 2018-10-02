#  _                _
# | |__   ___ _ ___| |__  _ __ ___
# | '_ \ /  _` / __| '_ \| `__/ __|
# | |_) |  ( | \__ \ | | | | | (__
# |____/ \_____|___/_| |_|_|  \___|


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

alias ls='ls --color=auto'
#alias dir='dir --color=auto'
#alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

shopt -s checkwinsize
shopt -s histappend

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

# current \u, \h and \w
BRGREEN4="\[\033[38;5;49m\]"
DCYAN3="\[\033[38;5;30m\]"
MGREY="\[\033[38;5;245m\]"
BLUEGREEN="\[\033[38;5;37m\]"

### Background Colors ###

PROMPT_DIRTRIM=2

PS1="${MGREY}[${BRGREEN4}\u${MGREY}@${BRGREEN4}\h${MGREY}:${BLUEGREEN}\w${MGREY}]\$ ${RESET}"

export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim

# My scripts
export PATH=$PATH:~/bin

# Sublime-Text ## Used symlink in /usr/bin
#export PATH=$PATH:/opt/sublime_text_3

# PyCharm ## Symlink in /usr/bin
#export PATH=$PATH:/opt/pycharm-community-2018.1.2/bin

# Test environment for bash/python/perl/ruby
#export PATH=$PATH:~/bin/python-test:~/bin/bash-test:~/bin/perl-test:~/bin/ruby-test

## Powerline
#powerline-daemon -q
#POWERLINE_BASH_CONTINUATION=1
#POWERLINE_BASH_SELECT=1
#. /usr/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh

# Enable word-wrapping for journalctl by default
# instead of truncating lines.
# EDIT: No truncation..? can scroll horizontally
#export SYSTEMD_LESS=FRXMK

### gpg-agent for ssh-keys ###
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi
# Set GPG TTY
export GPG_TTY=$(tty)
# Refresh gpg-agent tty in case user switches into an X session
gpg-connect-agent updatestartuptty /bye >/dev/null

#export CURRENT_DESKTOP="KDE"
export QT_QPA_PLATFORMTHEME="qt5ct"

# Add IntelliJ IDEA Community to path for CLI usage
export PATH=$PATH:/opt/idea-IC-182.4505.22/bin

# PIA related
export PATH=$PATH:/home/cory/bin/pia

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases
