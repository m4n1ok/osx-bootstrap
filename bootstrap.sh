echo "Installing xcode-stuff"
xcode-select --install

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
echo "Updating homebrew..."
brew update

echo "Installing Git..."
brew install git

# Install oh-my-zsh to beautify and manage zsh
echo "Installing oh-my-zsh..."
curl -L http://install.ohmyz.sh | sh

# Install brew taps
echo "Installing brew taps..."
while read in; do brew tap "$in"; done < Taps

# Set standard settings
source 'settings.sh'

# Install brews
echo "Installing brew apps..."
brew install $(cat Brewfile|grep -v "#")

# Install casks
echo "Installing cask apps..."
brew cask install --appdir="/Applications" $(cat Caskfile|grep -v "#")

# Install fonts
echo "Installing Nerd fonts..."
fonts_list=(
  font-clear-sans
  font-consolas-for-powerline
  font-dejavu-sans-mono-for-powerline
  font-fira-code
  font-fira-mono-for-powerline
  font-inconsolata
  font-inconsolata-for-powerline
  font-liberation-mono-for-powerline
  font-menlo-for-powerline
  font-roboto
  font-inconsolata-go-nerd-font
  font-inconsolata-lgc-nerd-font
  font-inconsolata-nerd-font
  font-jetbrains-mono-nerd-font
  font-meslo-lg-nerd-font
)

for font in "${fonts_list[@]}"
do
  brew install --cask "$font"
done
brew cleanup

echo "/usr/local/bin/zsh" | sudo tee -a /etc/shells
sudo mv /etc/{zshenv,zshrc}
chsh -s /usr/local/bin/zsh

source 'symlink-dotfiles.sh'

# Hide "last login" line when starting a new terminal session
touch $HOME/.hushlogin

# Install global composer packages
composer global require laravel/valet
valet install


