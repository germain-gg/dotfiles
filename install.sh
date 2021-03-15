echo "💪 Starting gsouquet/dotfiles\r\n"

touch ./config/.extra

if [[ ! -z $(grep "NAME" "$(pwd)/config/.extra") ]]; then
  echo "✅ .extra already configured, skipping\r\n\r\n";
else

  NAME=$(bash -c 'read -e -p "📝 Enter your full name: " tmp; echo $tmp')
  EMAIL=$(bash -c 'read -e -p "📝 Enter your email: " tmp; echo $tmp')

  echo "export NAME=$NAME
  export EMAIL=$EMAIL" >> ./config/.extra

  echo "[user]
    name = $NAME
    email = $EMAIL
  [core]
    excludesfile = $HOME/.gitignore" >> ./config/.gitconfig_local
  echo "\r\n"
fi

source ./config/.env
mkdir -p $WORKSPACE;

echo "✅ Go ahead, setup everything dawg!"

# asking for the user password upfront

sudo -v

# execute all scripts in the ./setup folder
for file in $(ls ./setup); do
  echo "  ➡️ Executing $file:\r\n"
  sh -- "./setup/$file"
  echo "\r\n\r\n"
done


sh ./symlink.sh
source $HOME/.zshrc

echo "🎉 All done!"
