# Suckmore

My Wayland-based environment setup.

## Setup

- Run the `setup.sh` installation script after installing the dependencies
  listed below.
- Enable SSH agent
  ```
  $ systemctl --user enable ssh-agent.service
  ```

## Display manager

```
# pacman -S lightdm lightdm-gtk-greeter
# systemctl enable lightdm.service
```

## Session

```
# pacman -S sway swaybg swaylock i3status grim slurp wl-clipboard libnotify mako wofi
```

## Pipewire

```
# pacman -S pipewire pipewire-pulse wireplumber
```

## Programs

```
# pacman -S foot zathura zathura-djvu zathura-ps zathura-pdf-mupdf
```

## Utilities

```
# pacman -S brightnessctl xdg-desktop-portal xdg-desktop-portal-wlr xdg-desktop-portal-gtk
```
