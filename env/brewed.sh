# Stuff from Homebrew-installed apps

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

complete -C aws_completer aws
