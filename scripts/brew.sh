apply_brew_taps() {
  local tap_packages=$*
  for tap in $tap_packages; do
    if brew tap | grep "$tap" > /dev/null; then
      warn "Tap $tap is already applied"
    else
      brew tap "$tap"
    fi
  done
}

install_brew_formulas() {
  local formulas=$*
  for formula in $formulas; do
    if brew list --formula | grep "$formula" > /dev/null; then
      warn "Formula $formula is already installed"
    else
      info "Installing package < $formula >"
      brew install "$formula"
    fi
  done
}

install_brew_casks() {
  local casks=$*
  for cask in $casks; do
    if brew list --casks | grep "$cask" > /dev/null; then
      warn "Cask $cask is already installed"
    else
    # Note reinstall instead of install to avoid already-installed error
    # and --force to ensure it gets dropped into the Applications folder
    # replacing the existing app.
      info "Installing cask < $cask >"
      brew reinstall --cask "$cask" --force
    fi
  done
}