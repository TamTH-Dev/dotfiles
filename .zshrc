##########################################
##               Editor                 ##
##########################################
export VISUAL=nvim
export EDITOR=nvim
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

##########################################
##               Aliases                ##
##########################################
alias vi=nvim
alias lg=lazygit
alias ls="ls -G"
alias la="ls -lah -G"
alias zshconfig="vi ~/.zshrc"
alias zshsource="source ~/.zshrc"

##########################################
##           Fzf configuration          ##
##########################################

export FZF_DEFAULT_OPTS="
  --color=bg+:#24283b,bg:#24283b
  --color=hl+:#2ac3de,hl:#2ac3de
  --color=fg+:#c0caf5,fg:#565f89
  --color=info:#9ece6a,prompt:#9ece6a,spinner:#9ece6a,pointer:#f7768e,marker:#2ac3de
  --layout=reverse --bind=shift-tab:up,tab:down --no-multi --cycle
"
export FZF_DEFAULT_COMMAND='rg --files --hidden -g "!{node_modules,.git,build,dist,.cache,cache,.idea,.pub-cache}"'

##########################################
