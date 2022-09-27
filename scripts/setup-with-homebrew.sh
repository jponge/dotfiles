#!/bin/bash
set -e

# sudo keep-alive, see https://gist.github.com/cowboy/3118588
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

function checking() {
  echo "[Checking $1]"
}

function already_installed() {
  echo "    => already installed"
}

function installing() {
  echo "[Installing $1]"
}

checking "XCode CLI"
xcode-select --install 2>/dev/null || already_installed

checking "Homebrew"
if [ -f /usr/local/bin/brew ]; then
  already_installed
else
  installing "Homebrew"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew bundle
brew cleanup -s
brew cask cleanup
