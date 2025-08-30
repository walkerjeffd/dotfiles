#echo loading .zshrc

# Oh My Zsh settings
DISABLE_AUTO_UPDATE="true"
DISABLE_MAGIC_FUNCTIONS="true"
DISABLE_COMPFIX="true"

# Oh My Zsh path
export ZSH="$HOME/.oh-my-zsh"

# Theme config
ZSH_THEME="spaceship"

# Spaceship settings
SPACESHIP_PROMPT_ASYNC=true # Render prompt asynchronously or not
SPACESHIP_PROMPT_ADD_NEWLINE=true # Adds a newline character before each prompt line
# SPACESHIP_CHAR_SYMBOL="⚡" # Symbol for the prompt
# SPACESHIP_TIME_SHOW=false # Display time
# SPACESHIP_USER_SHOW=never # Display username always
SPACESHIP_DIR_TRUNC_REPO=false # Do not truncate path in repos

# Spaceship prompt order
SPACESHIP_PROMPT_ORDER=(
  time
  user
  dir
  git
  conda
  line_sep
  char
)

# zsh-autosuggestions settings
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#663399,standout"
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE="20"
ZSH_AUTOSUGGEST_USE_ASYNC=1

# Carefully ordered plugins (syntax highlighting must be last)
plugins=(
  git
  common-aliases
  aws
  docker
  asdf
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# Source Oh My Zsh
source $ZSH/oh-my-zsh.sh

# choose first option in completion menu
setopt menu_complete

# ignore all duplicates in history
setopt hist_ignore_all_dups

# User configuration
export PATH="/usr/local/bin:$PATH"

# autocompletion
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BNothing found%b'

# Aliases
alias scr='screen -dRR'
[ -f ~/.zsh_aliases ] && source ~/.zsh_aliases

# Local settings
[[ -f ~/.zshrc_local ]] && source ~/.zshrc_local
