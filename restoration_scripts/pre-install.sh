sudo pacman -S cargo
rustup install stable
rustup default stable
cargo install docpars

git submodule add https://github.com/CodelyTV/dotly modules/dotly
DOTFILES_PATH="$HOME/.dotfiles" DOTLY_PATH="$DOTFILES_PATH/modules/dotly" "$DOTLY_PATH/bin/dot" self install
