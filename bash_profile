# node dev server port
PORT=3333
export PORT

# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
export PATH

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file

# cycle through options on autocomplete
bind '"\t":menu-complete'


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Set psql Editor
export PSQL_EDITOR="subl -w" 