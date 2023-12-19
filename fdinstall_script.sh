#!/bin/bash
# Flutter and Dart Installation Script for Linux(Debian based) by git5
# LoxoSec
# git5
# https://github.com/git5loxosec/
# https://git5loxosec.github.io/

echo -e "\e[36mWelcome to the Flutter and Dart Installation Script for Linux(Debian based) by git5.\e[0m"

# Installs prerequisites
echo -e "\e[36mInstalling prerequisites...\e[0m"

sudo apt-get update
sudo apt-get install -y git curl unzip xz-utils zip libglu1-mesa

# Fetch Flutter SDK
echo -e "\e[36mFetch Flutter SDK...\e[0m"

git clone https://github.com/flutter/flutter.git -b stable

# Sets up environment variables
echo -e "\e[36mSetting up environment variables...\e[0m"

export PATH="$PATH:`pwd`/flutter/bin"

# Initialize Flutter
echo -e "\e[36mInitializing Flutter...\e[0m"

flutter doctor

# NOTE
echo -e "\e[36mRemember to set up your preferred IDE (e.g., VSCode or Android Studio) with the Flutter and Dart plugins for a smoother development experience.\e[0m"

