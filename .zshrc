setopt NO_BEEP

export PS1="%n@local %1~ %# "
export PS1='\[\e]0;\u@\h: \w\a\]\[\e[94m\]\u@local\[\e[94m\](\t)(\#) \[\e[92m\]\w \[\e[95m\]$(__git_ps1 "(%s)")\[\e[94m\]\$ \[\e[97m\]'
export PS2='> '

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

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
