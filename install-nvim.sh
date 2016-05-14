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
echo -n 'Are you sure you want to destroy your existing .config/nvim ? (y/n) '
read confirm

if ! [[ "$confirm" =~ (y|Y) ]]; then
  exit 1
fi

# Clean existing repos
safe_rm "$HOME/.config/nvim"

# Creating .config directory
mkdir -p "$HOME/.config/nvim"

# Copy new files
echo "Copying vim files..."
cp -r `cwd`/dotvim/* "$HOME/.config/nvim"
cp    "`cwd`/dotvimrc" "$HOME/.config/nvim/init.vim"

echo "Installation successful!"
