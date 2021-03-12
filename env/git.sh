function clean-git-merged-branches() {
    git branch --merged master |grep -v -e master| xargs -n 1 git branch -d
}

eval $(gh completion -s zsh)