taps=(
  homebrew/cask
  homebrew/core
  homebrew/cask-fonts
  homebrew/cask-versions
  jandedobbeleer/oh-my-posh
  macos-fuse-t/cask
  wpscanteam/tap
)

packages=(
    curl
    ffmpeg
    flac
    fontconfig
    gnutls
    youtube-dl
    oh-my-posh
    mas
    imagemagick
    stow
    duti
    sqlite
    nvm
    yarn
    git
)

install_packages() {
  info "Configuring taps"
  apply_brew_taps "${taps[@]}"

  info "Installing packages..."
  install_brew_formulas "${packages[@]}"

  info "Cleaning up brew packages..."
  brew cleanup
}