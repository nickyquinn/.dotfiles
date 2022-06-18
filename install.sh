#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

. scripts/utils.sh
. scripts/brew.sh
. scripts/apps.sh
# . scripts/cli.sh
. scripts/config.sh
. scripts/osx.sh
. scripts/fonts.sh
. scripts/packages.sh
# . scripts/oh-my-zsh.sh

cleanup() {
  echo "Finishing..."
}

wait_input() {
  read -p "Press enter to continue: "
}

trap cleanup EXIT

main() {
  info "Installing ..."

  info "======= Homebrew packages ======="
  install_packages
  success "Finished installing Homebrew packages"

  info "======= Homebrew Fonts ======="
  install_fonts
  success "Finished installing fonts"

#   info "======= Oh-my-zsh ======="
#   wait_input
#   install_oh_my_zsh
#   success "Finished installing Oh-my-zsh"

#   install_zsh_plugins
#   success "Finished installing Oh-my-zsh plugins"

  info "======= MacOS Apps ======="
  install_macos_apps

  install_masApps
  success "Finished installing macOS apps"

  info "======= Configuration ======="
  setup_osx
  success "Finished configuring MacOS defaults. NOTE: A restart is needed"
#   code_as_default_text_editor
#   success "Finished setting up VSCode as default text editor"
  stow_dotfiles

  info "Creating development folder"
  mkdir -p ~/Development

  success "Finished stowing dotfiles"

  info "======= SSH Key ======="
  setup_github_ssh
  success "Finished setting up SSH Key"

#   info "======= NeoVim Plugins ======="
#   wait_input
#   nvim +PlugInstall +qall
#   success "Finished installing nvim plugins"

#   if ! hash rustc &>/dev/null; then
#     info "======= Rust Setup ======="
#     wait_input
#     rustup-init
#   fi

  success "Done"

  info "You might want to restart..."
}

main
