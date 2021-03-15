# list `-A` to show hidden files except '.' and '..'
for file in $(ls -A ./config); do
  # 'f' flag to force overwrite if target exists
  ln -sf $(pwd)/config/$file $HOME
done
