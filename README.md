# Suckmore

My Wayland-based environment setup.


## Environment

```
$ sudo pacman -S sway swaylock alacritty brightnessctl wl-clipboard
```


## Pipewire

```
$ sudo pacman -S pipewire pipewire-pulse
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
