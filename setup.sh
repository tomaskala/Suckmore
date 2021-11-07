#!/bin/sh
set -eu

GLOBIGNORE=".:..:.git:.gitignore"

install_dotfile() {
  dotfile="$1"
  dest="${HOME}/${dotfile}"

  printf 'Installing %s\n' "${dotfile}"
  mkdir -p "$(dirname "${dest}")"

  chmod go-rwx "${dotfile}"
  ln -fs "$(pwd)/${dotfile}" "${dest}"
}

for dotfiles_source in .*; do
  find "${dotfiles_source}" -type f | sort | while read -r dotfile; do
    install_dotfile "${dotfile}"
  done
done
