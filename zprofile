# echo Loading .zprofile

# nvm (load here for SublimeLinter integration)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# local
[[ -f ~/.zprofile_local ]] && source ~/.zprofile_local
