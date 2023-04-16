##########################################
##               Path env               ##
##########################################

# System
export PATH=~/.local/bin:$PATH
export PATH=~/.config/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/bin:$PATH
export PATH=/usr/sbin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/bin:$PATH
export PATH=/opt/homebrew/bin:$PATH

# Nvm
export NVM_DIR=~/.nvm
export PATH=~/.nvm/versions/node/v18.12.1/bin:$PATH

# Flutter
export PATH=~/flutter/bin:$PATH
export PATH=~/Library/Android/sdk/emulator:$PATH

# Python
export PATH=~/Library/Python/3.9/bin:$PATH

# Go
export PATH=~/go/bin:$PATH


##########################################
##         Basic configuration          ##
##########################################

export VISUAL=nvim
export EDITOR=nvim
source ~/zsh-vi-mode.zsh
source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh


##########################################
##           Fzf configuration          ##
##########################################
export FZF_DEFAULT_OPTS="
    --color=bg+:#24273A,bg:#24273A
    --color=hl+:#7DC4E4,hl:#7DC4E4
    --color=fg+:#CAD3F5,fg:#5B6078
    --color=info:#F5A97F,prompt:#A6DA95,spinner:#A5ADCB,pointer:#ED8796,marker:#8AADF4
    --layout=reverse --bind=shift-tab:up,tab:down --no-multi --cycle
  "
export FZF_DEFAULT_COMMAND='rg --files --hidden -g "!{node_modules,.git,build,dist,.cache,cache,.idea,.pub-cache}"'


##########################################
##               Aliases                ##
##########################################

alias vi=nvim
alias lg=lazygit
# alias ls=exa
# alias la="exa -lah"
alias la="ls -lah"
alias c=clear


##########################################
##              Starship                ##
##########################################

eval "$(starship init zsh)"

