#!/bin/zsh

FILES=(
    ".gitconfig"
    ".zprofile"
    ".zsh_aliases"
    ".zshrc"
)
DOTFILES_DIR=""

for f in "${FILES[@]}"; do
    if [ ! -e "${HOME}/${f}" ]; then
        ln -s "${DOTFILES_DIR}/${f}" "${HOME}/${f}"
    fi
done
