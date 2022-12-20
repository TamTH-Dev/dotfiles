# Invoke homebrew
eval (/opt/homebrew/bin/brew shellenv)

# TokyoNight Color Palette
set -l foreground c0caf5
set -l selection 303757
set -l comment 565f89
set -l red f7768e
set -l orange ff9e64
set -l yellow f1fa8c
set -l green 9ece6a
set -l blue 2ac3de
set -l magenta bb9af7

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $foreground
set -g fish_color_keyword $yellow
set -g fish_color_quote $green
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $green
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $green
set -g fish_color_autosuggestion $comment

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $blue
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $green

# Disable fish greeting
set fish_greeting

# Language environment
set LANG 'en_US.UTF-8'

# Preferred editor for local and remote sessions
set EDITOR nvim

# Set default keybindings mode
function fish_user_key_bindings
    fish_vi_key_bindings
end

# System
set PATH $HOME/.local/bin $HOME/.config/bin /usr/local/bin /usr/bin /usr/sbin /usr/local/sbin /bin $PATH

# Nvm
set NVM_DIR $HOME/.nvm
set PATH $HOME/.nvm/versions/node/v18.12.1/bin $PATH

# Rvm
set PATH $HOME/.rvm/bin $PATH

# Mobile
set PATH $HOME/flutter/bin $PATH
set PATH $HOME/Library/Android/sdk/emulator $PATH

# Postgresql
set PATH /Library/PostgreSQL/14/bin $PATH

# Python packages
set PATH $HOME/Library/Python/3.9/bin $PATH

# Go packages
set PATH $HOME/go/bin $PATH 

# Configure fzf
set -gx FZF_DEFAULT_OPTS '
    --color=bg+:#1a1b26,bg:#1a1b26
    --color=hl+:#2ac3de,hl:#2ac3de
    --color=fg+:#c0caf5,fg:#565f89
    --color=info:#9ece6a,prompt:#9ece6a,spinner:#9ece6a,pointer:#f7768e,marker:#2ac3de
    --layout=reverse --bind=shift-tab:up,tab:down --no-multi --cycle
  '
set -gx FZF_DEFAULT_COMMAND 'rg --files --hidden -g "!{node_modules,.git,build,dist,.cache,cache,.idea}"'

# Aliases
# Main editor
alias vi='nvim'
# Git management tool
alias lg='lazygit'
# Fish configuration
alias fishconfig="vi ~/.config/fish/config.fish"
# Changing "ls" to "exa"
alias ls='exa --color=always --group-directories-first'
alias la='exa -alh --color=always --group-directories-first'
alias lt='exa -aT --color=always --group-directories-first'
# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
# Simulator
alias simulator='arch -x86_64 /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app/Contents/MacOS/Simulator'

# Launch starship
starship init fish | source
