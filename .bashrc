#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# stolen from https://github.com/ChrisTitusTech/mybash

alias mkdir='mkdir -p'
alias tree='tree -l -C'
alias bat="bat --style=numbers --color=always"
alias zed=zeditor
alias ls="ls -Alh --si --color=always --group-directories-first"
alias rg="rg --hidden -i"
alias du="du -sh --si"
alias ncdu="ncdu --color dark --si"

PATH=$PATH:~/opt/cuda/bin/

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

