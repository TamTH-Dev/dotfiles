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
