#!/usr/bin/env bash

commandAvailable() {
  type "$1" &>/dev/null
}

# WGET
echo "👁 Validating wget installation..."
if ! commandAvailable wget; then
  echo "Installing wget..."
  brew install wget
fi
echo "✅"

# FLUTTER
echo "👁 Validating ~/Library/flutter"
FLUTTER=~/Library/flutter/
if ! [ -d "$FLUTTER" ]; then
  echo "Downloading Flutter SDK..."
  wget https://storage.googleapis.com/flutter_infra_release/releases/stable/macos/flutter_macos_2.5.3-stable.zip
  echo "Moving flutter to: ~/Library"
  unzip flutter_macos_2.5.3-stable.zip
  mv flutter ~/Library
fi
echo "✅"
# ZSHRC
echo "👁 Validating .zshrc"
ZSHRC=~/.zshrc
if ! [ -f "$ZSHRC" ]; then
  echo "Creating $ZSHRC"
  touch $ZSHRC
fi
echo "export PATH="$PATH:~/Library/flutter/bin >>$ZSHRC
echo "✅"
