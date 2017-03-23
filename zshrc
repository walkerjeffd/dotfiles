# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="blinks"

# custom theme
# echo "CUSTOM SET"
ZSH_CUSTOM="$HOME/.dotfiles/zsh_custom"
ZSH_THEME="blinks_jdw"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git sublime bower brew dirhistory npm common-aliases)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/texbin"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# node server
alias serv='http-server .'

# history
alias htoday='history | grep `date "+%Y-%m-%d"`'
alias hhour='history | grep `date "+%Y-%m-%d %H"`'

# screen
alias scr='screen -dRR'

# load stable node
type nvm > /dev/null && nvm use stable > /dev/null

# choose first option in completion menu
setopt MENU_COMPLETE

# functions
mcd() { mkdir $1 && cd $1; }

# boot2docker
$(boot2docker shellinit 2> /dev/null)

# marked 2
function marked(){
  if [ $1 ]; then 
    open -a "Marked 2.App" $1
  else
    open -a "Marked 2.App"
  fi
}

# beeps are annoying
setopt NO_BEEP

# history
# https://wiki.gentoo.org/wiki/Zsh/Guide#History

# Unfortunately, the default zsh configuration in Gentoo does not include command history support. As working with a shell without history is very frustrating, we should enter the following commands:

export HISTSIZE=2000
export HISTFILE="$HOME/.zsh_history"

# History won't be saved without the following command:

export SAVEHIST=$HISTSIZE

# To prevent history from recording duplicated entries (such as ls -l entered many times during single shell session), you can set the hist_ignore_all_dups option:

setopt hist_ignore_all_dups

# A useful trick to prevent particular entries from being recorded into a history by preceding them with at least one space.

setopt hist_ignore_space

# autocompletion
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BNothing found%b'

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

