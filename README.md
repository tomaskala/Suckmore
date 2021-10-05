# Suckmore

My Wayland-based environment setup.


## Environment

```
$ sudo pacman -S sway swaylock alacritty
```


## Utilities

```
$ sudo pacman -S brightnessctl grim slurp wl-clipboard libnotify mako
```


## Pipewire

```
$ sudo pacman -S pipewire pipewire-pulse pamixer
```


## Dotfiles

Add the following configuration to the following files.

* `~/.bash_profile`
  ```
  export TERMINAL='alacritty'

  if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
    exec sway
  fi
  ```
