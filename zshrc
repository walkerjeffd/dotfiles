#echo loading .zshrc

DISABLE_AUTO_UPDATE="true"
DISABLE_MAGIC_FUNCTIONS="true"
DISABLE_COMPFIX="true"

# Cache completions aggressively
autoload -Uz compinit
if [ "$(date +'%j')" != "$(stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)" ]; then
    compinit
else
    compinit -C
fi

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

# Minimal spaceship sections for performance
SPACESHIP_PROMPT_ORDER=(
  time
  user
  dir
  git
  conda
  line_sep
  char
)

# Carefully ordered plugins (syntax highlighting must be last)
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# Source Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Autosuggest settings
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#663399,standout"
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE="20"
ZSH_AUTOSUGGEST_USE_ASYNC=1

# Alias expansion function
globalias() {
   if [[ $LBUFFER =~ '[a-zA-Z0-9]+$' ]]; then
       zle _expand_alias
       zle expand-word
   fi
   zle self-insert
}
zle -N globalias
bindkey " " globalias
bindkey "^[[Z" magic-space
bindkey -M isearch " " magic-space

# Source aliases last
[ -f ~/.zsh_aliases ] && source ~/.zsh_aliases

# User configuration
export PATH="/usr/local/bin:$PATH"

# local
[[ -f ~/.zshrc_local ]] && source ~/.zshrc_local
