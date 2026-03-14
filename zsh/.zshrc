eval "$(starship init zsh)"

# Android Studio Environment Variables
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin


export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Set Java 17 as default for React Native
export JAVA_HOME=/opt/homebrew/Cellar/openjdk@17/17.0.16/libexec/openjdk.jdk/Contents/Home
export PATH="$JAVA_HOME/bin:$PATH"
. "/Users/samiviitanen/.deno/env"

# command to execute metro server with specific port on Resol ERP development
es() {
  kill $(lsof -ti:${1:-8085}) 2>/dev/null; npx expo start --port ${1:-8085}
}
