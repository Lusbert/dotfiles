if status is-interactive
    # kindly stolen from https://github.com/ChrisTitusTech/mybash/blob/main/.bashrc
    # alias's
    alias date='date "+%Y-%m-%d %A %T %B UTC%Z"'
    alias mkdir='mkdir -p'
    alias bat='bat --style=numbers --color=always'
    alias lfile="ls -l | grep -E -v '^d'"
    alias ldir="ls -l | grep -E '^d'"
    alias ls='ls -Alh --color=always'   # show hidden files
    alias rg='rg --hidden'
    alias tree='tree -l -C'

    # PATH stuff
    fish_add_path /home/lusbert/.juliaup/bin/

    # i have no idea what to call this part
    set EDITOR nvim
    set -U fish_greeting
    zoxide init fish | source
    set -gx FZF_CTRL_T_OPTS "--preview='bat --style=numbers --color=always --line-range :500 {}'"
    set -gx FZF_ALT_C_OPTS "--preview='tree -C {} | head -200'"
    fzf --fish | source
end

