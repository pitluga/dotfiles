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
export GREP_OPTIONS='--color=auto'
export GOPATH=${HOME}/go
export NVM_DIR=${HOME}/.nvm
export GPG_TTY=$(tty)

export PATH=/usr/local/heroku/bin:${PATH}
export PATH=${HOME}/bin:${PATH}
export PATH=${GOPATH}/bin:${PATH}

if [ -f /usr/libexec/java_home ]; then
  export JAVA_HOME=$(/usr/libexec/java_home)
fi

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

[[ -s /usr/local/opt/nvm/nvm.sh ]] && source /usr/local/opt/nvm/nvm.sh

[[ -s ${HOME}/.dotfiles/promptline.sh ]] && source ${HOME}/.dotfiles/promptline.sh

[[ -s ${HOME}/.aliases ]] && source ${HOME}/.aliases
