# TokyoNight Color Palette
set -l foreground D8DEE9
set -l selection EBCB8B
set -l comment 4C566A
set -l red BF616A
set -l orange D08770
set -l yellow EBCB8B
set -l green A3BE8C
set -l blue 81A1C1
set -l magenta B48EAD

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

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Disable fish greeting
set fish_greeting

# Language environment
set LANG "en_US.UTF-8"

# Preferred editor for local and remote sessions
set EDITOR nvim

# Set default keybindings mode
function fish_user_key_bindings
    fish_vi_key_bindings
end

# System path env
set PATH $HOME/.local/bin $HOME/.config/bin /usr/local/bin /usr/bin /usr/sbin /usr/local/sbin /bin $PATH

# Nvm path env
set NVM_DIR "$HOME/.nvm"
set PATH $HOME/.nvm/versions/node/v16.14.2/bin $PATH

# Configure fzf
set -gx FZF_DEFAULT_OPTS '
      --color=bg+:#2e3440,bg:#2e3440
      --color=hl+:#81a1c1,hl:#81a1c1
      --color=fg+:#d8dee9,fg:#4c566a
      --color=info:#a3be8c,prompt:#a3be8c,spinner:#a3be8c,pointer:#d08770,marker:#81a1c1
      --layout=reverse --bind=shift-tab:up,tab:down --no-multi --cycle'
set -gx FZF_DEFAULT_COMMAND 'rg --files --hidden -g "!{node_modules,.git,build,dist,.cache,cache,.idea}"'

# Aliases
# Main editor
alias vi="nvim"
# Git management tool
alias lg="lazygit"
# Fish configuration
alias fishconfig="vi ~/.config/fish/config.fish"
# Music controller
alias music="ncmpcpp"
# Calendar controller 
alias calendar="khal interactive"
# Changing "ls" to "exa"
alias ls='exa --color=always --group-directories-first' # my preferred listing
alias la='exa -alh --color=always --group-directories-first' # all files and dirs
alias lt='exa -aT --color=always --group-directories-first' # tree listing
# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
# Java compile
alias java_compile='find -name "*.java" > source.txt && javac @source.txt && rm source.txt'
alias java_clear='rm (find -name "*.class")'

# Warp cloudflare connection
alias warp_connect='warp-cli connect'
alias warp_disconnect='warp-cli disconnect'

# OpenVPN connection
alias openvpn_connect='sudo openvpn --config ~/Utils/client.ovpn --auth-user-pass --auth-retry interact'

# Random color script
# Install from the Arch User Repository: shell-color-scripts
# colorscript random

# Launch starship
starship init fish | source
