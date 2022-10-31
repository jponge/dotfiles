for envfile in ~/dotfiles/env/*.sh; do
  source ${envfile}
done

. "$HOME/.cargo/env"
