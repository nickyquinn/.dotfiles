apps=(
  balenaetcher
  beyond-compare
  clipy
  cryptomator
  db-browser-for-sqlite
  dotnet-sdk
  drawio
  exodus
  firefox
  firefox-developer-edition
  font-caskaydia-cove-nerd-font
  font-consolas-for-powerline
  font-fira-code-nerd-font
  font-inter
  font-menlo-for-powerline
  font-meslo-lg-dz
  font-meslo-lg-nerd-font
  fuse-t
  fuse-t-sshfs
  google-chrome
  gpg-suite-no-mail
  handbrake
  home-assistant
  insomnia
  iterm2
  keka
  kid3
  macfuse
  mattermost
  nextcloud
  protonmail-bridge
  rectangle
  rider
  signal
  standard-notes
  tor-browser
  transmission
  veracrypt
  viscosity
  visual-studio-code
  vlc
  whatsapp
  xld
)

masApps=(
  "937984704"   # Amphetamine
  "405399194"  # Amazon Kindle Desktop
  "1236045954" # Canary Mail
  # "768053424"   # Gappling (svg viewer)
)

install_macos_apps() {
  info "Installing macOS apps via brew..."
  install_brew_casks "${apps[@]}"
}

install_masApps() {
  info "Installing App Store apps..."
  for app in "${masApps[@]}"; do
    mas install $app
  done
}