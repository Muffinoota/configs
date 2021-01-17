# Alactritty installation
# git -C /usr/local/Homebrew/Library/Taps/homebrew/homebrew-core fetch --unshallow
# git -C /usr/local/Homebrew/Library/Taps/homebrew/homebrew-cask fetch --unshallow
# brew install --cask alacritty

# Use existing config
mkdir -p "$HOME/.config/alacritty" 
cp ./alacritty.yml "$HOME/.config/alacritty"

# Import shades of purple theme SEE:https://github.com/ahmadawais/shades-of-purple-alacritty/
curl https://raw.githubusercontent.com/ahmadawais/shades-of-purple-alacritty/master/alacritty.yml >> $HOME/.config/alacritty/alacritty.yml

# Use Pure Prompt SEE:https://github.com/sindresorhus/pure
mkdir -p "$HOME/.zsh"
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
cat ./additions-.zshrc.sh >> "$HOME/.zshrc"

echo "To use Monoid fonts you will need to install them from https://larsenwork.com/monoid/"