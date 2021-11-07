#!/usr/bin/env bash

echo "🤔 Select the version of Android Studio that’s right for your Mac:"
echo "1. Mac with Apple chip M1"
echo "2. Mac with Intel chip"
read macchip
case $macchip in
1*)
  echo "✅ Downloading Android Studio for Apple chip M1"
  wget https://redirector.gvt1.com/edgedl/android/studio/install/2020.3.1.25/android-studio-2020.3.1.25-mac.dmg
  open .
  ;;
2*)
  echo "✅ Downloading Android Studio for Intel chip"
  wget https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2020.3.1.25/android-studio-2020.3.1.25-mac_arm.zip
  unzip android-studio-2020.3.1.25-mac.zip
  mv Android\ Studio.app /System/Applications/
  ;;
*)
  echo "❌ You have entered an invalid selection! Try again."
  installAndroidStudio
  ;;
esac


