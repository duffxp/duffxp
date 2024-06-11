# Some Tricks

### Base64 
- Encode: `echo -n {123} |base64`
- Decode: `echo -n {xpto} |base64 --decode`

### Other convertions
- Hexadecimal to decimal: `echo $(())`
- Decimal to Hexadecimal: `printf '%x\n {10}`

### Firmware package name
- Install `apt-file`
- Update the list with `apt-file update`
- So find: `apt-file search --package-only /firmware/package`

### NTFS
- `sudo mkfs.ntfs -f /dev/sd{}`

### Lib-virt
- Run without sudo: `sudo usermod -a -G libvirt {username}`


### Wallet
Some Brave installations show a "Wallet" function.
To remove it, you need to purge the package:
```
sudo apt purge libkf5wallet*
```
### QT Theme with defaul GTK:
1. `sudo apt install -y qt5-style-plugins`
2. Edit `/etc/environment` and add: `QT_QPA_PLATFORMTHEME=gtk2`

### For "LightDM" configuration
1. Create a new directory: `/usr/share/background`
2. Copy a wallpaper there (with `sudo`)
3. Edit the `/etc/lightdm/lightdm-gtk-"whatever"`

### For DPi
1. Create a file in `$HOME` called `.Xresources`
2. Add the line: `Xft.dpi: 120`
- Some options are: `96, 120, 141, 144, 168, 192`
