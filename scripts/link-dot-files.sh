#!/bin/bash
# Link all dotfiles into ~ using GNU Stow, assuming we are in ~/dotfiles
set -ex

stow home
