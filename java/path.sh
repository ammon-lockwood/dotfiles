# Java 17 (installed via Homebrew)
if [[ -d "/opt/homebrew/opt/openjdk@17" ]]; then
    export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
    export JAVA_HOME=$(/usr/libexec/java_home -v 17 2>/dev/null)
elif [[ -d "/usr/local/opt/openjdk@17" ]]; then
    export PATH="/usr/local/opt/openjdk@17/bin:$PATH"
    export JAVA_HOME=$(/usr/libexec/java_home -v 17 2>/dev/null)
fi
