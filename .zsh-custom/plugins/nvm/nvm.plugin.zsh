# Set NVM_DIR if it isn't already defined
[[ -z "$NVM_DIR" ]] && export NVM_DIR="$HOME/.nvm"

# Load nvm if it exists
[[ -f "$(brew --prefix nvm)/nvm.sh" ]] && source "$(brew --prefix nvm)/nvm.sh"
