# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

ZSH_THEME="powerlevel9k/powerlevel9k"

COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git zsh-completions)

autoload -U compinit && compinit

#cache-path must exist
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

source $ZSH/oh-my-zsh.sh
unsetopt correct
unsetopt correct_all

# Customize to your needs...
export PATH=$PATH:/usr/lib/lightdm/lightdm:/usr/lib/google-golang/bin:/usr/local/buildtools/java/jdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

export JAVA_HOME=/usr/local/buildtools/java/jdk
export JDK_HOME=/usr/local/buildtools/java/jdk

export EDITOR=emacs

alias emacs="emacs -nw"
alias e="emacs"
alias ez="e ~/.zshrc"
alias sz="source ~/.zshrc"
alias ei3="e ~/.i3/config"

globalias() {
   if [[ $LBUFFER =~ ' ?[A-Z0-9]+$' ]]; then
     zle _expand_alias
     zle expand-word
   fi
   zle self-insert
}

zle -N globalias

bep() {
    ( speaker-test -t sine -f 1000 &> /dev/null)& pid=$! ; sleep .2s ; kill -9 $pid
}

bindkey " " globalias
bindkey ":" globalias
bindkey "/" globalias
bindkey "^ " magic-space           # control-space to bypass completion
bindkey -M isearch " " magic-space # normal space during searches

[ -f /usr/bin/g4 ]  && source ~/.goog_zshrc

