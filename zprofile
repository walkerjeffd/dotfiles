# echo Loading .zprofile

# nvm (load here for SublimeLinter integration)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# local
[[ -f ~/.zshprofile_local ]] && source ~/.zshprofile_local
