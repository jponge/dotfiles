# Stuff from Homebrew-installed apps

if [ -n "$ZSH_VERSION" ]; then
  fpath=(/usr/local/share/zsh-completions $fpath)
elif [ -n "$BASH_VERSION" ]; then
  if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
  fi
fi

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
