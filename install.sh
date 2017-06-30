## Vimball Installation Script
# Author: Chris Tompkinson
# Email:  ctompkinson@gmail.com
set -eu

# Functions
function safe_rm() {
  if [[ "$1" == "/" ]]; then
    echo 'Cowardly refused to rm /'
    exit 2
  fi

  echo "Deleting ${1}..."
  rm -rf "$1"
}

function cwd() {
  dirname $0 
}

# Confirm deletion
echo -n 'Are you sure you want to destroy your existing .vim and .vimrc? (y/n) '
read confirm

if ! [[ "$confirm" =~ (y|Y) ]]; then
  exit 1
fi

# Clean existing repos
safe_rm "$HOME/.vim"
safe_rm "$HOME/.vimrc"

# Copy new files
echo "Copying vim files..."
mkdir -p "$HOME/.config/nvim"
cp -r "`cwd`/dotvim" "$HOME/.config/nvim/init.vim"
cp    "`cwd`/dotvimrc" "$HOME/.config/nvim"

echo "Installation successful!"
