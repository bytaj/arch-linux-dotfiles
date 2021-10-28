# arch-linux-dotfiles
Mi personal configuration for install arch linux base

# Installation

## Pre-install
I choose ArcoLinuxD for install. The reason is the easy installation. The link is https://www.arcolinux.info/download/, we burn it in USB if needed.
If you are going to install it alone in the computer, you can skip to Install section. In the case you want install it with other OS, reduce the partition size of the space you want at let it unasigned.  

## Install
Boot from USB (or load the iso in VM if you are testing). In this guide we are going to select base installation. We are going to have the Arch Linux installation without mounting the filesystem, etc. The only part you need to customice is the partition step. In this step you can use the "Delete disk" if you want only Arch linux installation in your computer. I choosen create by hand the partitions. I left 208G free in unasinged space and I create one partition of 100G for /, 100G for Home and 8gb as swap.

After that, reboot the PC and you should see grub with Arch.
### UEFI Boot
If you work in computer with Windows and UEFI and you want conserve Windows, you need to select the Windows boot partition and modify it. Keep the partition and select the mount path as "boot/efi" and boot label.

## Post-install
You can find the next steps in this URL https://www.arcolinuxd.com/installation/ and section "ArcoLinuxD is installed – NOW WHAT".

1. `update` (This may take a while)
2. `skel`
3. `upall`
4. VGA Drivers installation (Outside the guide and NVIDIA GPU case):
    1. `sudo snap -S nvidia`
    2. `sudo snap -S nvidia-utils`
    3. `nvidia-xconfig`
5. Now, if you want graphic environement, you have to choose a login manager and window manager. In my case, *lightdm* and *qtile*:
    1. `sudo snap -S lightdm lightdm-gtk-greeter qtile`
    2. `sudo systemctl enable lightdm`

With this you should have the basic environement to start working.

### Open first terminal with qtile
If you can't open first terminal it's because qtile uses *xterm* terminal. In my case with *mod* (Windows key) and enter, it opens alacrit, but if you can't open it, press Ctrl+Alt+F2 (If you are in a VM and Linux host, do it with the keyborda provided) and install xterm with `sudo snap -S xterm`

# My customization
## Packages
1. `sudo pacman -S sed which unzip ` (Utilities)
1. `sudo pacman -S xcb-util-cursor` (change mouse)
1. `sudo pacman -S network-manager -applet ` (net)
1. See https://wiki.archlinux.org/title/Desktop_notifications for notifications
1. `sudo pacman -S cbatticon ` (laptop batery)
1. `sudo pacman -S binutils` (Utilities)
1. `sudo pacman -S arandr` (Control)
1. `sudo pacman -S python-pip` (Pip)
1. `pip install psutil` (file explorer graphical/terminal)
1. `sudo pacman -S udiskie ntfs-3g` (external media sources (Usbs...), second one is for windows ntfs disks)
1. `sudo pacman -S thunar  ` (file explorer graphical/terminal)
2. `sudo pacman -S pulseaudio pavucontrol` (Audio)
2. `sudo pacman -S brightnessctl` (screen bright)
2. `sudo pacman -S xorg-xinit` (xorg initial config) (you have to create .xsession file in your home `touch $HOME/.xsession` and give it execution perssion, `chmod u+x $HOME/.xsession`)
3. `sudo pacman -S rofi` (App menu)
4. `sudo pacman -S feh` (change wallpaper -> `feh --bg-scale <route> &`)
4. `sudo pacman -S picom` (modify images)
4. `sudo pacman -S volumeicon ` (`touch $HOME/.config/qtile/autostart.sh` and add line `volumeicon &` and `chmod u+x touch $HOME/.config/qtile/autostart.sh`) *Not working*
4. `sudo yay -S nerd-fonts-ubuntu-mono` (font)
4. `sudo pacman -S pacman -S ttf-dejavu ttf-liberation noto-fonts` (font)
