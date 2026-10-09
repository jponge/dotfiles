set -xg LC_ALL en_US.UTF-8
set -xg LANG en_US.UTF-8

set -xg EDITOR nano
abbr vi nvim
abbr vim nvim

fzf --fish | source

abbr cat bat
set -xg BAT_THEME ansi
set -xg BAT_STYLE plain

alias l "eza --color-scale --color auto --color-scale-mode=fixed --sort Name"
alias ll "eza --color-scale --color auto --color-scale-mode=fixed --sort Name --long"
alias la "eza --color-scale --color auto --color-scale-mode=fixed --sort Name --long --all"
alias lr "eza --color-scale --color auto --color-scale-mode=fixed --sort Name --long --recurse"
alias lra "eza --color-scale --color auto --color-scale-mode=fixed --sort Name --long --recurse --all"
alias lt "eza --color-scale --color auto --color-scale-mode=fixed --sort Name --long --tree"
alias lta "eza --color-scale --color auto --color-scale-mode=fixed --sort Name --long --tree --all"
alias ls "eza --color-scale --color auto --color-scale-mode=fixed --sort Name"
alias tree "eza --color-scale --color auto --color-scale-mode=fixed --sort Name --tree"

fish_add_path ~/.local/bin/

# Remove gcloud from the right prompt list if it's there
set -l index (contains -i gcloud $tide_right_prompt_items)
if test -n "$index"
    set -e tide_right_prompt_items[$index]
end
