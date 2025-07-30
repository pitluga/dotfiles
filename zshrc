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
export CLOUDSDK_PYTHON_SITEPACKAGES=1
export APPLE_SSH_ADD_BEHAVIOR=macos

export PATH=/usr/local/heroku/bin:${PATH}
export PATH=${HOME}/bin:${PATH}
export PATH=${GOPATH}/bin:${PATH}

if /usr/libexec/java_home --failfast 2> /dev/null; then
  export JAVA_HOME=$(/usr/libexec/java_home)
fi

[[ -s /usr/local/opt/asdf/asdf.sh ]] && source /usr/local/opt/asdf/asdf.sh
[[ -s /opt/homebrew/opt/asdf/libexec/asdf.sh ]] && source /opt/homebrew/opt/asdf/libexec/asdf.sh
[[ -s ${HOME}/.asdf/completions/asdf.bash ]] && source ${HOME}/.asdf/completions/asdf.bash

[[ -s ${HOME}/.dotfiles/promptline.sh ]] && source ${HOME}/.dotfiles/promptline.sh

[[ -s ${HOME}/.aliases ]] && source ${HOME}/.aliases

[[ -s ${HOME}/.zsh_local ]] && source ${HOME}/.zsh_local

[[ -s ${HOME}/.zshrc_local ]] && source ${HOME}/.zshrc_local

typeset -U PATH

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/tonypitluga/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/tonypitluga/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/tonypitluga/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/tonypitluga/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/tonypitluga/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
