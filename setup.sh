#!/bin/zsh

FILES=(
    ".gitconfig"
    ".zprofile"
)
DOTFILES_DIR="/Users/ssato/dotfiles-macos"

for f in "${FILES[@]}"; do
    if [ ! -e "${HOME}/${f}" ]; then
        ln -s "${DOTFILES_DIR}/${f}" "${HOME}/${f}"
    fi
done
