source $HOME/.antigen.zsh

antigen use oh-my-zsh

BULLETTRAIN_PROMPT_ADD_NEWLINE=false
BULLETTRAIN_STATUS_EXIT_SHOW=true
BULLETTRAIN_GIT_FETCH=true

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
antigen bundle virtualenvwrapper
antigen bundle wd

antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme gilmrjc/bullet-train-oh-my-zsh-theme bullet-train

antigen apply

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

alias python=python3
alias vim=nvim
alias vi=nvim
