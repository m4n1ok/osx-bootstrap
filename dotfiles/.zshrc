export ZSH=$HOME/.oh-my-zsh

EDITOR=subl

ZSH_THEME="ys"

DEFAULT_USER=`whoami`

plugins=(git brew brew-cask history-substring-search sublime common-aliases vagrant composer)

fpath=(/usr/local/share/zsh-completions $fpath)

export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH=~/.composer/vendor/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

alias phpcs='php-cs-fixer'

source $ZSH/oh-my-zsh.sh
source ~/Code/osx-bootstrap/dotfiles/.aliases

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh