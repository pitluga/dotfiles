autoload -U compinit
compinit
autoload -U colors
colors

autoload edit-command-line
zle -N edit-command-line
bindkey '^Xe' edit-command-line

setopt no_auto_menu
setopt prompt_subst
set -o emacs

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export EDITOR='vim'
export GOPATH=${HOME}/go
export NVM_DIR=${HOME}/.nvm
export GPG_TTY=$(tty)

export PATH=/usr/local/heroku/bin:${PATH}
export PATH=${HOME}/bin:${PATH}
export PATH=${GOPATH}/bin:${PATH}

if /usr/libexec/java_home --failfast 2> /dev/null; then
  export JAVA_HOME=$(/usr/libexec/java_home)
fi

[[ -s /usr/local/opt/asdf/asdf.sh ]] && source /usr/local/opt/asdf/asdf.sh
[[ -s ${HOME}/.asdf/asdf.sh ]] && source ${HOME}/.asdf/asdf.sh
[[ -s ${HOME}/.asdf/completions/asdf.bash ]] && source ${HOME}/.asdf/completions/asdf.bash

[[ -s ${HOME}/.dotfiles/promptline.sh ]] && source ${HOME}/.dotfiles/promptline.sh

[[ -s ${HOME}/.aliases ]] && source ${HOME}/.aliases

[[ -s ${HOME}/.zsh_local ]] && source ${HOME}/.zsh_local

[[ -s ${HOME}/.zshrc_local ]] && source ${HOME}/.zshrc_local

typeset -U PATH
