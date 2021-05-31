function clean-git-merged-branches() {
    git branch --merged main | grep -v -e main | xargs -n 1 git branch -d
}

eval $(gh completion -s zsh)