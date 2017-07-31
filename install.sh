## Vimball Installation Script
# Author: Chris Tompkinson
# Email:  ctompkinson@gmail.com

set -e

# Handle params
install_type="$1"
if ! [[ "$install_type" =~ (vim|nvim) ]]; then
  echo "Select vim or nvim"
  exit 1
fi

case $install_type in
  vim)
    init_file="$HOME/.vimrc"
    config_dir="$HOME/.vim"
    ;;
  nvim)
    init_file="$HOME/.config/nvim/init.vim"
    config_dir="$HOME/.config/nvim"
    ;;
esac

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
echo "Are you sure you want to destroy your existing $config_dir and $init_file? (y/n)"
read confirm

if ! [[ "$confirm" =~ (y|Y) ]]; then
  exit 1
fi

# Clean existing repos
safe_rm "$init_file"
safe_rm "$config_dir"

# Copy new files
echo "Copying files..."
mkdir -p "$config_dir"
cp -r ./dotvim/* "$config_dir"
cp    ./dotvimrc "$init_file"

echo "Installation successful!"
