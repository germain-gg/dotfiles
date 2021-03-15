if [[ $(command -v brew) == "" ]]; then
    echo "✅ Installing Hombrew"
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "⬆️ Updating Homebrew"
    brew update
fi
brew tap homebrew/cask
brew tap homebrew/cask-versions

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

pip install ansible
pip install passlib

brew install --cask disk-inventory-x
brew install --cask tunnelblick

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