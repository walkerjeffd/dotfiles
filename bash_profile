echo "Loading .bash_profile"

# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
# PATH=/usr/local/bin:$PATH
# PATH=$HOME/bin:$PATH
# export PATH

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file

# cycle through options on autocomplete
bind '"\t":menu-complete'

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# added by Anaconda3 5.0.0 installer
export PATH="/Users/jeff/anaconda3/bin:$PATH"
