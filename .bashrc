#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# stolen from https://github.com/ChrisTitusTech/mybash
alias date='date "+%Y-%m-%d %A %T %B UTC%Z"'
alias mkdir='mkdir -p'
alias bat='bat --style=numbers --color=always'
alias lfile="ls -l | grep -E -v '^d'"
alias ldir="ls -l | grep -E '^d'"
alias ls='ls -Alh --color=always'   # show hidden files
alias sha256='openssl sha256'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias tree='tree -l -C'
PS1='[\u@\h \W]\$ '
