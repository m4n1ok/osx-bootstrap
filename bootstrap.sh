# Install Homebrew (http://brew.sh)
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Update Homebrew
brew update

# Install oh-my-zsh to beautify and manage zsh
curl -L http://install.ohmyz.sh | sh

# Install brew taps
while read in; do brew tap "$in"; done < Taps

# Install brews
brew tap sambadevi/powerlevel9k
brew tap homebrew/cask-fonts
brew install $(cat Brewfile|grep -v "#")

# Install casks
brew cask install --appdir="/Applications" $(cat Caskfile|grep -v "#")

brew cleanup

echo "/usr/local/bin/zsh" | sudo tee -a /etc/shells
sudo mv /etc/{zshenv,zshrc}
chsh -s /usr/local/bin/zsh

# Set standard settings
source 'settings.sh'
source 'symlink-dotfiles.sh'

# Hide "last login" line when starting a new terminal session
touch $HOME/.hushlogin

# Install global composer packages
#composer global require "laravel/envoy=~1.0"
#composer global require friendsofphp/php-cs-fixer
composer global require laravel/valet
valet install

# Install global npm packages
#npm install -g gulp

#Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

