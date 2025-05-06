setopt NO_BEEP

export PS1="%n@local %1~ %# "

if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
    autoload -Uz compinit
    compinit
fi

alias ls='ls -G'
alias ll='ls -alF'

if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi
