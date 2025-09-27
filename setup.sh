#!/bin/zsh

FILES=(
    "bin"
    ".gitconfig"
    ".sqliterc"
    ".vimrc"
    ".zprofile"
    ".zsh_aliases"
    ".zshrc"
)
DOTFILES_DIR="/Users/ssato/dotfiles-macos"

for f in "${FILES[@]}"; do
    if [ ! -e "${HOME}/${f}" ]; then
        ln -s "${DOTFILES_DIR}/${f}" "${HOME}/${f}"
    fi
done

chmod +x ./bin/stopwatch
chmod +x ./bin/ticktack
chmod +x ./bin/tokyodate
