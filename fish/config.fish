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
set -g fish_color_command $blue
set -g fish_color_keyword $magenta
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $magenta
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $magenta
set -g fish_color_autosuggestion $comment

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $blue
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment

if status is-interactive
  # Commands to run in interactive sessions can go here
end

# Disable fish greeting
set fish_greeting

# Language environment
set LANG "en_US.UTF-8"

# Preferred editor for local and remote sessions
set EDITOR "nvim"

# Set default keybindings mode
function fish_user_key_bindings
  fish_vi_key_bindings
end

# System path env
set PATH $HOME/.local/bin $HOME/.config/bin /usr/local/bin /usr/bin /usr/sbin /usr/local/sbin /bin $PATH

# Nvm path env
set NVM_DIR "$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  
set PATH $HOME/.nvm/versions/node/v14.18.0/bin $PATH

# Path env for ruby
set PATH $HOME/.local/share/gem/ruby/3.0.0/bin $PATH

# Configure fzf
set -gx FZF_DEFAULT_OPTS '
      --color=bg+:#24283b,bg:#24283b
      --color=hl+:#2ac3de,hl:#2ac3de
      --color=fg+:#c0caf5,fg:#565f89
      --color=info:#9ece6a,prompt:#9ece6a,spinner:#9ece6a,pointer:#f7768e,marker:#2ac3de
      --layout=reverse --bind=shift-tab:up,tab:down --no-multi --cycle'
set -gx FZF_DEFAULT_COMMAND 'rg --files --hidden -g "!{node_modules,.git,build,dist,.cache,cache,.idea}"'

# Aliases
# Main editor
alias vi="nvim"
# Fish configuration
alias fishconfig="vi ~/.config/fish/config.fish"
# Music controller
alias music="ncmpcpp"
# Calendar controller 
alias calendar="khal interactive"
# Changing "ls" to "exa"
alias ls='exa -a --color=always --group-directories-first'  # my preferred listing
alias la='exa -al --color=always --group-directories-first' # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Random color script
# Install from the Arch User Repository: shell-color-scripts
colorscript random

# Launch starship
starship init fish | source
