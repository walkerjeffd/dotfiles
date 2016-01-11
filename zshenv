# load nvm and default node version
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
type nvm > /dev/null && nvm use stable > /dev/null
