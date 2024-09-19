# Download Znap, if it's not there yet.
[[ -r ~/.zsh-plugins/zsh-znap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/.zsh-plugins/zsh-znap
source ~/.zsh-plugins/zsh-znap/znap.zsh  # Start Znap

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$HOME/.composer/vendor/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"


#SSH 1password
# export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

znap prompt romkatv/powerlevel10k

znap source ohmyzsh/ohmyzsh lib/{git,theme-and-appearance}
znap source ohmyzsh/ohmyzsh plugins/colored-man-pages

ZSH_AUTOSUGGEST_STRATEGY=( history completion )
znap source marlonrichert/zsh-autocomplete

znap source zsh-users/zsh-autosuggestions


ZSH_HIGHLIGHT_HIGHLIGHTERS=( main brackets )
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Autocomplete style
#zstyle ':autocomplete:*' min-input 4
#zstyle ':autocomplete:*' default-context history-incremental-search-backward
zstyle ':autocomplete:*' delay 0.2  # seconds (float)

#Reset history key bindings to Zsh default
() {
   local -a prefix=( '\e'{\[,O} )
   local -a up=( ${^prefix}A ) down=( ${^prefix}B )
   local key=
   for key in $up[@]; do
      bindkey "$key" up-line-or-history
   done
   for key in $down[@]; do
      bindkey "$key" down-line-or-history
   done
}

# User configuration
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='webstorm'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# aliases
source ~/.aliases

# npm completion
source ~/.npm-completion

# Autoload
eval "$(~/.local/bin/mise activate zsh)"

#Yarn
export PATH="$HOME/.yarn/bin:$PATH"


# tabtab source for packages
# for pnpm autocomplete
# uninstall by removing these lines
[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true
