export NVM_DIR="$HOME/.nvm"

# Lazy-load NVM and common node tools for faster shell startup
if [[ -s "$NVM_DIR/nvm.sh" ]]; then
    _nvm_load() {
        unfunction _nvm_load nvm node npm npx 2>/dev/null
        [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
        [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
    }
    nvm() { _nvm_load; nvm "$@"; }
    node() { _nvm_load; node "$@"; }
    npm() { _nvm_load; npm "$@"; }
    npx() { _nvm_load; npx "$@"; }
fi
