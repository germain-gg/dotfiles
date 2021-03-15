# Using hyper as a terminal 
# https://hyper.is/
brew install --cask hyper

# https://github.com/sindresorhus/pure
npm install --global pure-prompt

# pure-prompt dependencies
hyper install hyper-snazzy 
cp ../fonts/Menlo-Regular.ttf $HOME/Library/Fonts/Menlo-Regular.ttf

brew install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/config/zsh-syntax-highlighting
