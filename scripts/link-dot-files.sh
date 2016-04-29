# Link all dotfiles into ~ using GNU Stow, assuming we are in ~/dotfiles
set -e
set -x

here=`pwd`
cd home/.vim/bundle
git submodule init
git submodule update
cd ${here}

stow home
