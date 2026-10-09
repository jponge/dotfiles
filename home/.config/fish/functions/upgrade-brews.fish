function upgrade-brews
    brew update
    brew upgrade
    brew upgrade --cask
    brew cleanup -s
    fish_update_completions
end
