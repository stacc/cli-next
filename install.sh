#!/bin/bash

echo " ___ _____ _   ___ ___ "
echo "/ __|_   _/_\ / __/ __|"
echo "\__ \ | |/ _ \ (_| (__ "
echo "|___/ |_/_/ \_\___\___|"
echo ""

if [[ ! ":$PATH:" == *":/usr/local/bin:"* ]]; then
  echo "Your path is missing /usr/local/bin, you need to add this to use this installer."
  exit 1
fi

if [ "$(uname)" == "Darwin" ]; then
  OS=darwin
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  OS=linux
else
  echo "This installer is only supported on Linux and MacOS"
  exit 1
fi

ARCH="\$(uname -m)"

VERSION=$(curl --silent "https://api.github.com/repos/stacc/cli-next/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')

URL="https://github.com/stacc/cli-next/releases/download/$VERSION/stacc_${VERSION:1}_$(uname)_$(uname -m).tar.gz"

echo "- Downloading from $URL"

if [ $(command -v curl) ]; then
  curl -LSs "$URL" | tar xz
else
  wget -O- "$URL" | tar xz
fi

if [ $? -ne 0 ]; then
  echo "Failed to download from $URL"
  exit 1
fi

TARGET="/usr/local/bin/stacc"

echo "- Installing binary to $TARGET"

sudo mv "stacc" "$TARGET"

LOCATION=$(command -v stacc)
echo ""
echo "Stacc CLI has been successfully installed!"
