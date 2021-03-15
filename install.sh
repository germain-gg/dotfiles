echo "💪 Starting gsouquet/dotfiles\r\n"

NAME=$(bash -c 'read -e -p "📝 Enter your full name: " tmp; echo $tmp')
EMAIL=$(bash -c 'read -e -p "📝 Enter your email: " tmp; echo $tmp')

echo "export NAME=$NAME
export EMAIL=$EMAIL" >> ./config/.extra

echo "[user]
  name = $NAME
  email = $EMAIL
[core]
  excludesfile = $HOME/.gitignore" >> ./.gitconfig_local

echo "\r\n"

echo "✅ Go ahead, setup everything dawg!"

# asking for the user password upfront

sudo -v

# execute all scripts in the ./setup folder
for file in ./setup/*; do
  sh -- "$file"
done

mkdir -p $WORKSPACE;

sh ./symlink.sh
source $HOME/.zshrc

echo "🎉 All done!"
