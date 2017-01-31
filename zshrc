ZSH=$HOME/.oh-my-zsh

ZSH_THEME="powerlevel9k/powerlevel9k"

COMPLETION_WAITING_DOTS="true"

plugins=(git zsh-completions globalias)

autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

# Customize to your needs...
export PATH=$PATH:/usr/lib/lightdm/lightdm:/usr/lib/google-golang/bin:/usr/local/buildtools/java/jdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

export EDITOR=emacs

alias emacs="emacs -nw"
alias e="emacs"
alias ez="e ~/.zshrc"
alias sz="source ~/.zshrc"
alias ei3="e ~/.i3/config"

[[ -f /usr/bin/g4 ]] && source ~/goog.zsh
