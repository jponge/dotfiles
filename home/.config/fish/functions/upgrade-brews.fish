function upgrade-brews
    brew update
    brew upgrade
    brew cu --cleanup
    brew cleanup -s
    fish_update_completions
end
