# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/bin:~/.composer/vendor/bin:$PATH

eval "$(/opt/homebrew/bin/brew shellenv)"
# eval "$(mise activate zsh --shims)"
eval "$($HOME/.local/bin/mise activate zsh --shims)"

#Yarn
export PATH="$HOME/.yarn/bin:$PATH"

#Dbngin
export PATH="/Users/Shared/DBngin/postgresql/17.0/bin:$PATH"

# Added by OrbStack: command-line tools and integration
# source ~/.orbstack/shell/init.zsh 2>/dev/null || :

