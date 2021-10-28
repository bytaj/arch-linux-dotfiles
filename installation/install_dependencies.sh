sudo pacman -S --noconfirm sed which binutils python-pip udiskie thunar pulseaudio pavucontrol brightnessctl xorg-xinit \
rofi feh picom volumeicon
pip install psutil
touch $HOME/.xsession
chmod u+x $HOME/.xsession
yay -SYg nerd-fonts-ubuntu-mono
1. `` (file explorer graphical/terminal)
1. `sudo pacman -S ` (external media sources (Usbs...))
1. `sudo pacman -S   ` (file explorer graphical/terminal)
2. `sudo pacman -S ` (Audio)
2. `sudo pacman -S ` (screen bright)
2. `sudo pacman -S ` (xorg initial config) (you have to create .xsession file in your home `touch $HOME/.xsession` and give it execution perssion, ``)
3. `sudo pacman -S ` (App menu)
4. `sudo pacman -S ` (change wallpaper -> `feh --bg-scale <route> &`)
4. `sudo pacman -S ` (modify images)
4. `sudo pacman -S  ` (`touch $HOME/.config/qtile/autostart.sh` and add line `volumeicon &` and `chmod u+x touch $HOME/.config/qtile/autostart.sh`) *Not working*
4. `sudo yay -` (font)
