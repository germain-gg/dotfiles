if [[ $(command -v brew) == "" ]]; then
    echo "✅ Installing Hombrew"
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "⬆️ Updating Homebrew"
    brew update
fi
brew tap homebrew/cask
brew tap homebrew/cask-versions

# https://github.com/zsh-users/zsh-completions/issues/433
chmod -R go-w "$(brew --prefix)/share"

##
## 🤓 Developer tools
##

brew install git
brew install gh

brew install yarn

brew install wget

brew install python

brew install --cask docker
brew install --cask visual-studio-code
brew install --cask diffmerge

##
## 🛠 Utility
##

pip3 install ansible
pip3 install passlib

brew install --cask disk-inventory-x
brew install --cask tunnelblick

brew install --cask beardedspice
brew install --cask rectangle

##
## 🌐 Web browsers
##

brew install --cask firefox
brew install --cask firefox-nightly

brew install --cask google-chrome
brew install --cask google-chrome-canary
brew install --cask chromium

brew install --cask microsoft-edge

brew install --cask opera

brew install --cask safari-technology-preview

##
## 🎥 Media & Entertainment
##

brew install --cask spotify
brew install --cask vlc

##
## 📨 Messaging
##

brew install --cask element
brew install --cask slack
brew install --cask discord
brew install --cask skype

brew install --cask spark
