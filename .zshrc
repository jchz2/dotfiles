# CodeWhisperer pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh"
# Brew
export PATH=/opt/homebrew/bin:$PATH

# Starship
# eval "$(starship init zsh)"

# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="nanotech"
source $ZSH/oh-my-zsh.sh

# Nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Java
export JAVA_HOME=/usr/bin/java

# Neovim
alias v=nvim
alias obsidian="cd Library/Mobile\ Documents/iCloud~md~obsidian/Documents/Obsidian/digitalBrain"

# Alias bbva
alias glob="cells app:serve -c mx/web-dev.js"
alias loc="cells app:serve -c mx/local-dev.js"
alias sweb="cells app:serve -c mx/local-dev.js"
alias comp="cells component:serve"
alias utest="cells component:test"
alias lctest="cells lit-component:test"
alias clit="cells lit-component:serve"
alias e2e="npm run test:e2e -- -c config/localExampleWeb.js"
alias vulk="cells app:build -c mx/android-test.js -b novulcanize"
alias vulkze="cells app:build -c mx/android-test.js -b vulcanize"
alias so="source"
alias op="open ."
alias cod="code ."
alias litlint="cells lit-component:lint"
alias bowlint="cells component:lint"
alias cat="nyancat"

# Alias git
alias gch="git checkout"
alias gst="git status"
alias gl="git log --oneline --decorate --all --graph"
alias gcm="git commit"
alias ga="git add"
alias gpo="git pull origin"
alias gpu="git push origin"

alias js="curl cht.sh/js+"


# Java
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export JAVA_HOME=/usr/bin/java


#tmux
function tat {
  name=$(basename `pwd` | sed -e 's/\.//g')
   if tmux ls 2>&1 | grep "$name"; then
     tmux attach -t "$name"
   elif [ -f .envrc ]; then
     direnv exec / tmux new-session -s "$name"
   else
     tmux new-session -s "$name"
   fi
 }

export PATH="$PATH:/Users/jczamora/.bin"
#
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"


[[ -f "$HOME/fig-export/dotfiles/dotfile.zsh" ]] && builtin source "$HOME/fig-export/dotfiles/dotfile.zsh"

# CodeWhisperer post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh"

#vBank
export PATH="$HOME/:$PATH"
