if status is-interactive
    # some were kindly stolen from https://github.com/ChrisTitusTech/mybash/blob/main/.bashrc
    # abbrs and aliases
    alias bat="bat --style=numbers --color=always"
    alias zed=zeditor
    alias date="date \"+%Y-%m-%d %A %T %B UTC%Z\""
    set -Ux LESS '--ignore-case --quiet --long-prompt --wordwrap --no-vbell --use-color'

    abbr -a -- mkdir  mkdir -p
    abbr -a -- ls     ls -Alh --color=always
    abbr -a -- rg     rg --hidden -i
    abbr -a -- tree   tree -l -C
    abbr -a -- du     du -sh
    abbr -a -- sudo     doas
    abbr -a -- sudoedit doasedit

    # PATH stuff
    fish_add_path /home/lusbert/.juliaup/bin/

    # i have no idea what to call this part
    set EDITOR nvim
    function fish_greeting
        fastfetch -c ~/.config/fastfetch/small.jsonc
    end
    set -gx FZF_CTRL_T_OPTS "--preview='bat --style=numbers --color=always --line-range :100 {}'"
    set -gx FZF_ALT_C_OPTS "--preview='tree -C {} | head -200'"
    fzf --fish | source
end

