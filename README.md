# Suckmore

My Wayland-based environment setup.


## Setup

* Run the `setup.sh` installation script after installing the dependencies
  listed below.


## Environment

```
# pacman -S sway swaylock foot
```

## Pipewire

```
# pacman -S pipewire pipewire-pulse pamixer
```


## Utilities

```
# pacman -S brightnessctl grim slurp wl-clipboard libnotify mako
```


## Dotfiles

Add the following configuration to the following files.

* `~/.bash_profile`
  ```
  export TERMINAL='foot'

  if [ -z "${WAYLAND_DISPLAY}" ] && [ -z "${DISPLAY}" ] && [ "$(tty)" = "/dev/tty1" ]; then
    ssh-agent sway
  fi
  ```
* `~/.config/tmux/tmux.conf`
  ```
  bind -T copy-mode-vi y send -X copy-pipe-and-cancel "wl-copy"
  ```
