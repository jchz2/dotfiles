# Brew
export PATH=/opt/homebrew/bin:$PATH

# Starship
eval "$(starship init zsh)"

# Nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Java
export JAVA_HOME=/usr/bin/java

# Neovim
alias v=nvim

# Alias bbva
alias glomo="cells app:serve -c mx/web-dev.js"
alias comp="cells component:serve"
alias utest="cells component:test"
alias complit="cells lit-component:serve"
alias e2e="npm run test:e2e -- -c config/localExampleWeb.js"


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Java
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export JAVA_HOME=/usr/bin/java

# ChatGPT
export OPENAI_API_KEY=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
