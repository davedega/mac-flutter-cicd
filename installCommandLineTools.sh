#!/usr/bin/env bash

echo "👁 Installing Xcode Command Line tools.."
sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
sudo xcodebuild -runFirstLaunch
sudo xcodebuild -license
open -a Simulator

sudo gem install cocoapods

echo "👁 Installing node.."
brew update
brew install node
echo "👁 Installing Firebase CLI.."
npm install -g firebase-tools
