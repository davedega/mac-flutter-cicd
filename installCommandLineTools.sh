#!/usr/bin/env bash

echo "👁 Installing Xcode Command Line tools.."
sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
sudo xcodebuild -runFirstLaunch
sudo xcodebuild -license
sudo gem install cocoapods

echo "👁 Installing node.."
brew install node
echo "👁 Installing Firebase CLI.."
npm install -g firebase-tools
echo "✅"