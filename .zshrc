##########################################
##               Path env               ##
##########################################

export CLICOLOR=1

# System
export PATH=~/.local/bin:$PATH
export PATH=~/.config/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/bin:$PATH
export PATH=/usr/sbin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/bin:$PATH
export PATH=/opt/homebrew/bin:$PATH

# Python
export PATH=~/Library/Python/3.11/bin:$PATH

# Docker daemon fix
export DOCKER_HOST=unix:///Users/$(whoami)/Library/Containers/com.docker.docker/Data/docker.raw.sock

# Nvm
export NVM_DIR=~/.nvm
source $NVM_DIR/nvm.sh
export PATH=$NVM_DIR/versions/node/v18.12.1/bin:$PATH

# Flutter
export PATH=~/flutter/bin:$PATH
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Pub
export PATH="$PATH":"$HOME/.pub-cache/bin"

# Go
export PATH=~/go/bin:$PATH

# Ruby
export GEM_HOME=$HOME/.gem
export PATH="$GEM_HOME/bin:$PATH"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Java
# export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk-1.8.jdk/Contents/Home'
export PATH=$JAVA_HOME/bin:$PATH


##########################################
##         Basic configuration          ##
##########################################

export VISUAL=nvim
export EDITOR=nvim
source ~/.zshrc.vi-mode
source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh


##########################################
##           Fzf configuration          ##
##########################################

export FZF_DEFAULT_OPTS="--layout=reverse --bind=shift-tab:up,tab:down --no-multi --cycle"
export FZF_DEFAULT_COMMAND='rg --files --hidden -g "!{node_modules,.git,build,dist,.cache,cache,.idea,.pub-cache}"'


##########################################
##               Aliases                ##
##########################################

alias vi=nvim
alias lg=lazygit
alias ls="ls -G"
alias la="ls -lah -G"
alias zshconfig="vi ~/.zshrc"
alias zshsource="source ~/.zshrc"

# bun completions
[ -s "/Users/lap15870-local/.bun/_bun" ] && source "/Users/lap15870-local/.bun/_bun"
