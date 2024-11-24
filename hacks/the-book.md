### 🦊 Welcome to the "Fox Map"

---

1. Installation Step

- If you need _Nerd Giphs_, you can download it [here](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/NerdFontsSymbolsOnly.zip).
- `QT` Theme with defaul `GTK` (basic):
```
$ sudo apt install -y qt5-style-plugins
$ sudoedit /etc/environment
$ # add QT_QPA_PLATFORMTHEME=gtk2
```
- For DPI:
```
$ echo 'Xft.dpi: 120' >> .Xresources
$ # other options are: 96, 120, 141, 144, 168, 192
```

---

2. General Information

- Base64
> Encode: `echo -n {123} |base64`
> Decode: `echo -n {xpto} |base64 --decode`

- Other convertions
> Hexadecimal to decimal: `echo $(())`
> Decimal to Hexadecimal: `printf '%x\n {10}`

- Firmware package name (for Debian-based)
> Install `apt-file`
> Update the list with `apt-file update`
> Then: `apt-file search --package-only /firmware/package`

- NTFS
> `sudo mkfs.ntfs -f /dev/sd{}`

- Lib-virt
> Run it without sudo: `sudo usermod -a -G libvirt {username}`

---

3. For fun with **Arch-based**

- Alternative to `lxappearance`:
> `$ sudo pacman -S nwg-look`

- For some Flatpak apps that requires web:
> `$ sudo pacman -S xdg-desktop-portal-gtk`
