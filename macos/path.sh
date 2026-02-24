# Homebrew - supports both Apple Silicon (/opt/homebrew) and Intel (/usr/local)
if [[ -d /opt/homebrew ]]; then
    export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
elif [[ -d /usr/local/Homebrew ]]; then
    export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
fi

export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"

# Project-local and personal bins
export PATH="./bin:$HOME/.local/bin:$PATH"

# Android SDK
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$PATH"

# Flutter
export PATH="$HOME/development/flutter/bin:$HOME/development/flutter/.pub-cache/bin:$HOME/development/flutter/bin/cache/dart-sdk/bin:$HOME/.pub-cache/bin:$PATH"

# FVM (Flutter Version Manager)
export PATH="$HOME/fvm/default/bin:$PATH"

# Rancher Desktop
[[ -d "$HOME/.rd/bin" ]] && export PATH="$HOME/.rd/bin:$PATH"
