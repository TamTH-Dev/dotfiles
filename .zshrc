## Aliases
alias vi=nvim
alias lg=lazygit
alias ls="ls -G"
alias la="ls -lah -G"
alias zshconfig="vi ~/.zshrc"
alias zshsource="source ~/.zshrc"
alias fzf="fzf --style full --preview 'fzf-preview.sh {}' --bind 'focus:transform-header:file --brief {}'"

## Common
export PATH="$HOME/.local/bin:$PATH"

## Editor
export VISUAL=nvim
export EDITOR=nvim
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

## Nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Powerlevel10k
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
