#!/bin/bash

tput setaf 5
echo "Installing Homebrew..."
tput sgr0
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"


tput setaf 5
echo "Installing ffmpeg..."
tput sgr0
brew install ffmpeg --with-fdk-aac --with-ffplay --with-freetype --with-frei0r --with-libass --with-libvo-aacenc --with-libvorbis --with-libvpx --with-opencore-amr --with-openjpeg --with-opus --with-rtmpdump --with-schroedinger --with-speex --with-theora --with-tools

tput setaf 5
echo "Installing python..."
tput sgr0
brew install python 	# Brew Python includes pip

tput setaf 5
echo "Installing youtube-dl..."
tput sgr0
pip install youtube_dl
