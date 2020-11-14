#!/bin/bash

git pull

echo "importing .config/starship.toml"
cp ./.config/starship.toml ~/.config/starship.toml

echo "importing .aliases"
cp ./.aliases ~/.aliases

echo "importing .exports"
cp ./.exports ~/.exports

echo "importing .functions"
cp ./.functions ~/.functions

echo "importing .zshrc"
cp ./.zshrc ~/.zshrc

echo "importing .vimrc"
cp ./.vimrc ~/.vimrc

echo "importing .exports"
cp ./.exports ~/.exports

echo "Imported ✨"
