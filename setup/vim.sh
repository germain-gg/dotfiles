brew install vim

# Loading theme and config via `vim-plug`
# Run the command `PlugInstall` when a change in configuration is made to `.vimrc`
# https://github.com/junegunn/vim-plug

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp ../.vimrc $HOME/.vimrc

# How to run a vim command via the command line
# https://stackoverflow.com/questions/12834370/how-to-run-a-vim-command-from-the-shell-command-line/12834450#12834450
vim +PlugInstall +qall
