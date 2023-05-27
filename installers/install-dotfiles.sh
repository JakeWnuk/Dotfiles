#!/bin/bash

cwd=$(echo $PWD)

# Remove existing dotfiles if they exist
for dir in $HOME/dotfiles/*; do
  folder=$(echo $dir | awk '{gsub(/\/.*\//,"",$1); print}')
  for file in $HOME/dotfiles/$folder/*; do
    rm_file=$(echo $file | awk '{gsub(/\/.*\//,"",$1); print}' | sed 's/dot-/./g')
    rm -f $HOME/$rm_file
  done
done

# Restore dotfiles with stow
for dir in $HOME/dotfiles/*; do
  cd $HOME/dotfiles/ && stow --dotfiles $(echo $dir | awk '{gsub(/\/.*\//,"",$1); print}')
done
