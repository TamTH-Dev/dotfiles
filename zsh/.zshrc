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
    --color=bg+:#1a1b26,bg:#1a1b26
    --color=hl+:#2ac3de,hl:#2ac3de
    --color=fg+:#c0caf5,fg:#565f89
    --color=info:#9ece6a,prompt:#9ece6a,spinner:#9ece6a,pointer:#f7768e,marker:#2ac3de
    --layout=reverse --bind=shift-tab:up,tab:down --no-multi --cycle
  "
export FZF_DEFAULT_COMMAND='rg --files --hidden -g "!{node_modules,.git,build,dist,.cache,cache,.idea}"'


##########################################
##               Aliases                ##
##########################################

alias vi=nvim
alias lg=lazygit
alias ls=exa
alias la="exa -lah"
alias c=clear


##########################################
##              Starship                ##
##########################################

eval "$(starship init zsh)"

