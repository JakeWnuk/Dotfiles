#!/bin/bash
# This installer installs the dotfiles to the users home directory

# Remove existing dotfiles if they exist
for dir in $HOME/dotfiles/*; do
  folder=$(basename $dir)
  for file in $HOME/dotfiles/$folder/*; do
    rm_file=$(basename $file | sed 's/dot-/./g')
    rm -f $HOME/$rm_file
  done
done

# Restore dotfiles with stow
for dir in $HOME/dotfiles/*; do
  folder=$(basename $dir)
  stow --dotfiles -d $HOME/dotfiles -t $HOME $folder
done
