for envfile in ~/dotfiles/env/*.sh; do
  source ${envfile}
done

export PATH="$HOME/.cargo/bin:$PATH"
