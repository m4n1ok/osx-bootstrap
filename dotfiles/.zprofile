# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Composer
export PATH="$PATH:$HOME/.composer/vendor/bin"
export PATH="$PATH:$HOME/.config/composer/vendor/bin"

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(mise activate zsh --shims)"
#eval "$($HOME/.local/bin/mise activate zsh --shims)"

#Yarn
export PATH="$HOME/.yarn/bin:$PATH"

#Dbngin
#export PATH="/Users/Shared/DBngin/postgresql/17.0/bin:$PATH"

# Add all DBngin database bin directories to PATH
if [ -d "/Users/Shared/DBngin" ]; then
  for db_bin in $(find /Users/Shared/DBngin -name "bin" -type d); do
    export PATH="$db_bin:$PATH"
  done
fi

#Phpmon
export PATH=$HOME/bin:~/.config/phpmon/bin:$PATH

# Added by OrbStack: command-line tools and integration
# source ~/.orbstack/shell/init.zsh 2>/dev/null || :


eval "$(/opt/homebrew/bin/brew shellenv)"
