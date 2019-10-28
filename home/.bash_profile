for envfile in ~/dotfiles/env/*.sh; do
  source ${envfile}
done

[ -s "/Users/jponge/.jabba/jabba.sh" ] && source "/Users/jponge/.jabba/jabba.sh"

export PATH="$HOME/.cargo/bin:$PATH"
