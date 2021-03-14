# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin/:/usr/local/bin:/usr/bin/:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/madlife/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

ZSH_THEME="obraun"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=5

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(
  git
  # zsh-syntax-highlighting
  # zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# Auto jump
[[ -s /home/madlife/.autojump/etc/profile.d/autojump.sh ]] && source /home/madlife/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u

# Load pure theme
# autoload -U promptinit; promptinit
# prompt pure

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='nvim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="nvim ~/.zshrc"
alias vi="nvim"

# Export temp directory
export TMPDIR="/tmp"

# Configure fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS='--height 60% --layout=reverse --border --preview "bat --theme="OneHalfDark" --style=numbers --color=always --line-range :500 {}" --bind=shift-tab:up,tab:down --no-multi --cycle'
export FZF_DEFAULT_COMMAND='rg --files --hidden -g "!{node_modules,.git,build,dist,.cache,cache,.idea}"'

# Path env for npm packages
export PATH=~/.npm-packages/bin:$PATH

# Path env for yarn packages
# export PATH=~/.yarn-packages/bin:$PATH

# Path env for java
export JAVA_HOME=/usr/lib/jvm/jdk-11.0.9
export PATH=$JAVA_HOME/bin:$PATH

# Path env for flutter
export PATH=$PATH:~/flutter/bin

# Path env for SQLServer
export PATH=$PATH:/opt/mssql-tools/bin

# Path env for ruby
export GEM_HOME=~/.gem
export PATH=~/.gem/bin:$PATH

# Path for cargo
export PATH=~/.cargo/bin:$PATH

# Run tmux on startup
[ -z "$TMUX" ] && { exec tmux new-session && exit;}
