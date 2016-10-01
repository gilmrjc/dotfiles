if [ -d "$HOME/.pyenv" ]; then
  export PATH="$HOME/.pyenv/bin:$PATH"
  eval "$(pyenv init -)"
else
  curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash
  export PATH="$HOME/.pyenv/bin:$PATH"
  eval "$(pyenv init -)"
fi

export PYTHON_CONFIGURE_OPTS="--enable-shared"

pyenv install -s 2.7.12
pyenv install -s 3.3.6
pyenv install -s 3.4.5
pyenv install -s 3.5.2
pyenv install -s pypy-4.0.1
pyenv rehash
pyenv global 3.4.5 3.5.2 2.7.12 3.3.6 pypy-4.0.1 system

PATH=$PATH:~/.local/bin
source $HOME/.antigen.zsh

antigen use oh-my-zsh

BULLETTRAIN_PROMPT_ADD_NEWLINE=false
BULLETTRAIN_STATUS_EXIT_SHOW=true
BULLETTRAIN_GIT_FETCH=true
BULLETTRAIN_VIRTUAL_ENV_PREFIX=""

HYPHEN_INSENSITIVE="true"
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

antigen bundle battery
antigen bundle common-aliases
antigen bundle encode64
antigen bundle gem
antigen bundle git
antigen bundle nyan
antigen bundle pip
antigen bundle python
antigen bundle rand-quote
antigen bundle sudo
antigen bundle wd

antigen bundle caarlos0/git-add-remote
antigen bundle fabiokiatkowski/exercism.plugin.zsh
antigen bundle Vifon/deer
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle arzzen/calc.plugin.zsh
antigen bundle djui/alias-tips

antigen theme gilmrjc/bullet-train-oh-my-zsh-theme bullet-train

antigen apply

autoload -U deer
zle -N deer
bindkey '\ek' deer

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/proyectos

if [[ -f "$HOME/.local/bin/virtualenvwrapper.sh" ]]; then
  source $HOME/.local/bin/virtualenvwrapper.sh
fi

export GOPATH=$HOME/.go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

export ZSH_PLUGINS_ALIAS_TIPS_EXCLUDES="_ please"

alias nv=nvim
eval "$(thefuck --alias)"
