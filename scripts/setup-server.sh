#!/bin/bash

# exit on error
set -e


# install add-ons
install_package() {
	if ! hash "$1" 2>/dev/null; then
    	echo "Installing $1..."
        #sudo apt update
		#sudo apt -qy install "$1"
	fi
}


echo "Sminems Sniper installer"
echo "---------------------"


# verify os
os="$(uname)"
if [ "$os" != "Linux" ]; then
  echo "Unsupported operating system: $foundOS!"
  exit 1
fi

# verify architecture
arch="$(uname -m)"
if [ "$arch" = "x86_64" ]; then
  echo "Found amd64 architecture..."
else
  echo "Unsupported architecture: $foundArch!"
  exit 1
fi

# install curl and screen
install_package wget
install_package unzip
install_package screen

echo "Looking for $arch version..."
filename="sminems-sniper"
zipfile="sminems-sniper-linux.zip"
url="$(wget -qO- https://api.github.com/repos/Sminems-Sniper/releases/releases/latest | grep "$zipfile" | cut -d : -f 2,3 | tr -d \" | cut -d , -f 2)"

echo
echo "Attempting to download: $url"
rm -f "$zipfile"
wget -nv --show-progress $url

echo "Unpacking node files..."
unzip "$zipfile"
sudo mv "$filename" /usr/local/bin/sniper
rm -f "$zipfile"
echo "Sniper unpacked"

echo
echo "Your sniper setup is complete."
echo "To run the sniper use the following command (ctrl+c to exit):"
echo " sniper"
echo
echo "Reach us over on https://t.me/SminemsSniper if you're having problems."