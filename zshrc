ZSH=$HOME/.oh-my-zsh

ZSH_THEME="powerlevel9k/powerlevel9k"

COMPLETION_WAITING_DOTS="true"

plugins=(git zsh-completions globalias colorize)

autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs time)

export EDITOR=emacs

alias e="emacs -nw"
alias ez="e ~/.zshrc"
alias sz="source ~/.zshrc"
alias ei3="e ~/.i3/config"

alias pls=please
alias please='sudo $(fc -ln -1)'

if [[ -f /usr/bin/g4 ]]; then
    source ~/googzsh/goog.zsh
    POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs custom_client custom_switch_target)
    POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status prodaccess_status root_indicator background_jobs time)
fi
