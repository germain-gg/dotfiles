if [ ! -f $HOME/.ssh/id_rsa ]; then
    echo "🔑 SSH key not found"
    echo "..."
    echo "🔄 Generating a new one"
    ssh-keygen -t rsa -b 4096 -o -a 100 -f ~/.ssh/id_rsa
else
    echo "🔑 SSH key already exists"
    echo "Skipping..."
fi