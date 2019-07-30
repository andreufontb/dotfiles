#!/usr/bin/env bash

echo "Installing xcode dev tools"
echo ""
xcode-select --install

check () { type -t "${@}" > /dev/null 2>&1; }

if ! check brew; then
  echo "Downloading and install homebrew"
  echo ""
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

  # run Brew doctor before anything else
  brew doctor
fi

if check brew; then
  echo "Installing brew packages"
  echo ""
  brew update
  brew insall docker-machine hugo libunistring telnet docker-machine-driver-xhyve icu4c node wget gettext libidn2 openssl xhyve

  echo "Installing brew cask packages"
  echo ""
  brew cask isntall appcleaner docker imageoptim mplayerx transmission-remote-gui ccleaner grandperspective keka netspot visual-studio-code coconutbattery handbrake metaz sequel-pro disk-inventory-x iina minishift sourcetree
fi