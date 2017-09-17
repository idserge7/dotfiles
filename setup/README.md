# System setup

## GUI

Desktop environment: `xubuntu-core^ xfce4-xkb-plugin xclip`

Terminal: `gnome-terminal`

Browser: `https://vivaldi.com`

Theme: `http://software.opensuse.org/download.html?project=home%3AHorst3180&package=arc-theme`

Icons: `sudo add-apt-repository ppa:papirus/papirus && sudo apt update && sudo apt install papirus-icon-theme`


## Keyboard shortcuts

Change `Caps Lock` to `Escape`:

`/etc/default/keyboard`

edit `XKBOPTIONS="grp:ctrl_shift_toggle,grp_led:scroll,caps:escape"`

## Editor

### Neovim

Compile

```bash
rm -r build
make clean
make CMAKE_BUILD_TYPE=Release
```

Plugins

```bash
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## Tools

### Build and tools

`build-essential python3-pip atool p7zip-full`

### Docker

`https://get.docker.com`

`https://github.com/docker/compose`

### Graphics

`blender inkscape gimp`

### Books

`https://calibre-ebook.com/download_linux`

## Terminal

### zsh

Add virtualenv and 256 color stuff

and oh-my-zsh

### tmux

Work with shortcuts and format status line

### ranger

```
pip install ranger-fm
apt install caca-utils highlight atool w3m poppler-utils mediainfo
```

### mocp

Switch to vim-like shortcuts

### httpie

### Theme: base16

`https://github.com/chriskempson/base16-shell`

### Font: Source Code Pro

`https://github.com/adobe-fonts/source-code-pro`

Terminal font: Source Code Pro Medium 12.6
