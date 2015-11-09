# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install common
brew install ack \
             curl wget
             git \
             redis

# Install homebrew cask
brew install caskroom/cask/brew-cask

# Install apps
brew cask install github-desktop
brew cask install google-chrome
brew cask install slack

#Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 0.02

#Set a shorter Delay until key repeat
defaults write NSGlobalDomain InitialKeyRepeat -int 12
