echo "This is a script ran by the restoration process. You can add yours inside '$DOTFILES_PATH/restoration_scripts'"
echo
echo "Self install scripts must have chmod u+x to run"
echo

zsh
dot arch install import
dot symlinks apply
#yay -S nerd-fonts-ubuntu-mono
#yay -S jetbrains-toolbox
pip install psutil
sudo usermod -aG docker $(whoami)
sudo systemctl enable docker
sudo systemctl enable lightdm

cd /tmp
git clone https://github.com/davatorium/rofi-themes.git
sudo cp rofi-themes/User\ Themes/onedark.rasi /usr/share/rofi/themes