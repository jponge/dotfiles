function upgrade-brews {
  brew update
  brew upgrade
  brew cu --cleanup
  brew cleanup -s
}

function upgrade_oh_my_zsh_custom {
  for custom in ~/.oh-my-zsh/custom/*/*/; do
    if [ -d $custom/.git ]; then
      echo "➡️  Upgrading $custom"
      git -C $custom pull
    fi
  done
}

function upgrade-zsh-config {
  upgrade_oh_my_zsh_custom
  omz update  
}
