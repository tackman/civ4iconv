#!/bin/sh

echo "Rewriting XML character encodings under $1"
current=`pwd`

cd "$1"
cp "$current/iconv.sh" "Assets/XML/Text"
cd "Assets/XML/Text"
./iconv.sh

cd "$1"
cp "$current/iconv.sh" "Warlords/Assets/XML/Text"
cd "Warlords/Assets/XML/Text"
./iconv.sh

cd "$1"
cp "$current/iconv.sh" "Beyond the Sword/Assets/XML/Text"
cd "Beyond the Sword/Assets/XML/Text"
./iconv.sh
