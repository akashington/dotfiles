#!/usr/bin/env bash
set -euo pipefail

echo "Creating symlinks for Vim dotfiles..."

cd "$HOME"

create_symlink()
{
	local source=$1
	local target=$2

	if [ -e "$target" ] && [ ! -L "$target" ]; then
		echo "Backing up existing $target to $target.backup"
		mv "$target" "$target.backup"
	fi

	if [ -L "$target" ]; then
		rm "$target"
	fi

	echo "Linking $source to $target"
	ln -s "$source" "$target"
}

create_symlink "$HOME/dotfiles/vim/.vimrc" "$HOME/.vimrc"
create_symlink "$HOME/dotfiles/vim/.vim" "$HOME/.vim"

echo "Done."
