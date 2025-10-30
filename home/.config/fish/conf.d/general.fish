set -xg LC_ALL en_US.UTF-8
set -xg LANG en_US.UTF-8

set -xg EDITOR nvim
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

