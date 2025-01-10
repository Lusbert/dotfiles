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
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias tree='tree -l -C'
PS1='[\u@\h \W]\$ '

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

case ":$PATH:" in
    *:/home/lusbert/.juliaup/bin:*)
        ;;

    *)
        export PATH=/home/lusbert/.juliaup/bin${PATH:+:${PATH}}
        ;;
esac

# <<< juliaup initialize <<<

. "$HOME/.local/bin/env"
