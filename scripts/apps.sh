apps=(
  clipy
  # docker
  firefox-developer-edition
  chromium
  standard-notes
  exodus
  signal
  mattermost
  cryptomator
  iterm2
  keka
  insomnia
  transmission
  balenaetcher
  veracrypt
  handbrake
  protonmail-bridge
  viscosity
  gpg-suite-no-mail
  whatsapp
  drawio
  rider
  beyond-compare
  tor-browser
  nextcloud
  kid3
  xld
  # kaleidoscope
  # owasp-zap
  visual-studio-code
  vlc
)

masApps=(
  "937984704"   # Amphetamine
  "405399194"  # Amazon Kindle Desktop
  "1236045954" # Canary Mail
  "557168941" # Tweetbot 2
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