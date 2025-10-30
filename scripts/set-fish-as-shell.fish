#!/usr/bin/env fish
set path_to_fish (which fish)
echo $path_to_fish | sudo tee -a /etc/shells
chsh -s $path_to_fish