taps=(
    homebrew/cask
    homebrew/core
    jandedobbeleer/oh-my-posh
    wpscanteam/tap
    homebrew/cask-versions
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
)

install_packages() {
  info "Configuring taps"
  apply_brew_taps "${taps[@]}"

  info "Installing packages..."
  install_brew_formulas "${packages[@]}"

  info "Cleaning up brew packages..."
  brew cleanup
}