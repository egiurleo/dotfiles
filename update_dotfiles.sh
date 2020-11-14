#!/bin/bash

echo "copying .config/starship.toml"
cp ~/.config/starship.toml ./.config/starship.toml

echo "copying .aliases"
cp ~/.aliases ./

echo "copying .exports"
cp ~/.exports ./

echo "copying .functions"
cp ~/.functions ./

echo "copying .zshrc"
cp ~/.zshrc ./

echo "copying .vimrc"
cp ~/.vimrc ./

echo "pusing to github"
git pull
git add .
git commit -m "updating dotfiles"
git push

echo "Updated ✨"
