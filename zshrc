# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerlevel9k/powerlevel9k"

COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git zsh-completions globalias)

autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_MODE='awesome-fontconfig'
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
