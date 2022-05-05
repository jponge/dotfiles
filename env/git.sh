function clean-git-merged-branches() {
	git checkout main && git branch --merged | egrep -v "(^\*|main)" | xargs git branch -d
}

eval $(gh completion -s zsh)
